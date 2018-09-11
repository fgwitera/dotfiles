# Load the shell dotfiles
for file in ~/.{aliases,plugins,prompt}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export DISPLAY=localhost:0.0
