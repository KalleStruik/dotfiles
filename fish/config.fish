set --export SHELL /bin/fish
set --export EDITOR "nvim"
set -e fish_greeting

source "$HOME/.config/fish/abbreviations.fish"

function playlist-dl
	echo "Looking up playlist name..."
	set pl_line (youtube-dl --flat-playlist "$argv" | grep "\[youtube:playlist\] playlist")
	set pl_name (echo $pl_line | cut -d ']' -f2 | sed -e 's/^ playlist //g' | cut -d ':' -f1 | tr '/' ' ')
	echo "Found playlist by name: $pl_name"
	echo "Downloading it into directory: $pl_name"

	mkdir "$pl_name"
	cd "$pl_name"
	youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" "$argv"
	cd ../
end

function compile
	gcc -no-pie -g -o $argv[2] $argv[1]
end
