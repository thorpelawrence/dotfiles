source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen apply


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lawrence/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/lawrence/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lawrence/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/lawrence/google-cloud-sdk/completion.zsh.inc'; fi
