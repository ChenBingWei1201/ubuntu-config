if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

set -gx PATH $HOME/bin $PATH

# pnpm
set -gx PNPM_HOME "/home/joe/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

function nvm_auto_use --on-variable PWD
    if test -f .nvmrc
        nvm use (cat .nvmrc)
    end
end

set -gx PATH /opt/homebrew/bin $PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
