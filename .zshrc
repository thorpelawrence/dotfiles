### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

zinit light sindresorhus/pure

zinit lucid light-mode for \
    OMZL::git.zsh \
    OMZL::completion.zsh \
    OMZL::key-bindings.zsh \
    OMZL::directories.zsh \
    OMZL::history.zsh \
    OMZL::theme-and-appearance.zsh \
    OMZL::termsupport.zsh \
    OMZL::clipboard.zsh \
    OMZP::git \
    OMZP::command-not-found \
    as"completion" \
        OMZP::docker/_docker \
    OMZP::docker-compose \
    OMZP::yarn \
    OMZP::fasd \
    from"gh-r" as"program" \
        junegunn/fzf \
    "https://github.com/junegunn/fzf/blob/master/shell/key-bindings.zsh" \
    "https://github.com/junegunn/fzf/blob/master/shell/completion.zsh" \
    atinit"zicompinit; zicdreplay" \
        zdharma/fast-syntax-highlighting \
    atload"_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions \
    blockf atpull"zinit creinstall -q ." \
        zsh-users/zsh-completions

(( $+commands[bat] )) && alias cat=bat # alias cat="bat --paging=never"

KERNEL_NAME="$(uname -s)"

if [[ "$KERNEL_NAME" == "Darwin" ]]; then
    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
elif [[ "$KERNEL_NAME" == "Linux" ]]; then
    alias open=xdg-open
fi

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
gpgconf --launch gpg-agent
