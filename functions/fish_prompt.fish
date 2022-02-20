# theme: cafetería
# left side

function _git_branch_name
	echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
	echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function fish_prompt
	set -l mocha (set_color -o 988165)
	set -l chai (set_color -o E2CDBA)
	set -l matcha (set_color -o 868D56)
	set -l thai (set_color -o DC6200)
	set -l short (basename (prompt_pwd))

function fish_title
	echo "hey $USER, what's brewing?"
end

# additional color matching

        set fish_color_command 988165
	set fish_color_param E2CDBA
	set fish_color_error DC6200
	set fish_color_quote 868D56

# display current directory name
	echo $chai@$mocha$hostname
	#echo -n -s $mocha$short " "

# show git branch and dirty state
if [ (_git_branch_name) ]
	set -l git_branch (_git_branch_name)

if [ (_is_git_dirty) ]
	set git_info $thai$git_branch " "
else
	set git_info $matcha$git_branch " "
end
	echo -n -s ' ' $git_info

end

# terminate with character
	echo '☕' ""

end
