# theme: barista
# right side

function fish_right_prompt
	set -l chai (set_color -o E2CDBA)
	set -l thai (set_color -o DC6200)
	set -l matcha (set_color -o 868D56)
	set -l mocha (set_color -o 988165)

# show duration of the last command in seconds
        set duration (echo "$CMD_DURATION 1000" | awk '{printf "%.3fs", $1 / $2}')
        echo $mocha$duration ""

# display full current working directory
	echo $chai (pwd)

end
