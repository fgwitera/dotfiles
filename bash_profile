# Load the shell dotfiles
for file in ~/.{prompt,aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
