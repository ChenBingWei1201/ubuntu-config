if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source

# pnpm
set -gx PNPM_HOME "/home/joe/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
thefuck --alias | source
