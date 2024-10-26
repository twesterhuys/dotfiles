# Load VCS
autoload -Uz vcs_info
precmd() { vcs_info }

# show git branch
zstyle ':vcs_info:git:*' formats '%b '

# replace default prompt
setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# Load asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Load fnm
export PATH="$HOME/.local/state/fnm_multishells/4471_1727870192791/bin":$PATH
export FNM_VERSION_FILE_STRATEGY="local"
export FNM_DIR="$HOME/.local/share/fnm"
export FNM_ARCH="arm64"
export FNM_RESOLVE_ENGINES="false"
export FNM_NODE_DIST_MIRROR="https://nodejs.org/dist"
export FNM_MULTISHELL_PATH="$HOME/.local/state/fnm_multishells/4471_1727870192791"
export FNM_COREPACK_ENABLED="false"
export FNM_LOGLEVEL="info"
rehash

# Colors
export CLICOLOR=1

alias ls='ls -G'
alias ll='ls -lG'

autoload -Uz compinit
compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/packer packer

export PATH="$PATH:$HOME/.dotnet/tools"

eval $(/opt/homebrew/bin/brew shellenv)
