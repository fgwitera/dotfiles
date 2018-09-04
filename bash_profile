# Load the shell dotfiles
for file in ~/.{prompt,aliases,plugins}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
