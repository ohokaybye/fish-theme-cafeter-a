# theme: cafetería
# right side

function fish_right_prompt
	set -l chai (set_color -o E2CDBA)

# display full current working directory
echo -n -s $chai (pwd)

end
