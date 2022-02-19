# theme: cafetería
# left side

function fish_prompt
	set -l mocha (set_color -o 988165)
	set -l chai (set_color -o E2CDBA)
	set -l short (basename (prompt_pwd))

function fish_title
	echo '☕'
	#echo $USER@$hostname
	#echo (basename (prompt_pwd))
end

# display current directory name
	echo $mocha$USER@$chai$hostname
	#echo -n -s $mocha$short " "

# terminate with character
	echo '☕' ""

end
