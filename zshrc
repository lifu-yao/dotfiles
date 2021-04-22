# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

export MAVEN_HOME=/Users/lifuyao/didi/apache-maven-3.6.3
export PATH=$PATH:$MAVEN_HOME/bin


export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_251.jdk/Contents/Home"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
ZSH_DISABLE_COMPFIX="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	bundler
	dotenv
	osx
	zsh-autosuggestions
	web-search
	yarn
	extract
	history
	sudo
	z
	)

source ~/.oh-my-zsh/oh-my-zsh.sh
# User configuration
# export GOOGLE_APPLICATION_CREDENTIALS="$HOME/credentials/gcp_credential.json"
export PATH=~/bin:$PATH
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# clear
alias cl="clear"

# tmux shortcuts
alias t.="tmux a -t dotfiles"
# ssh remote connect to Didi relay system
alias ddssh="expect ~/didi/relay/autologin.expect"
alias ddssh1="expect ~/didi/relay/autologin1.expect"
alias ddssh2="expect ~/didi/relay/autologin2.expect"
# ssh to my personal VM
alias ssh_lifu="ssh root@10.179.18.168"

alias ssh_config="ssh root@10.179.18.197"
alias ssh_gateway="ssh root@10.179.147.105"
alias ssh_mgr="ssh root@10.96.83.46"
alias ssh_event="ssh root@10.96.88.217"
alias ssh_event_dev="ssh root@10.96.91.8"
alias ssh_event_async="ssh root@10.96.101.55"
alias ssh_remote="ssh root@10.96.77.205"
alias ssh_newton_remote="ssh root@10.96.77.204"
alias ssh_data="ssh root@10.96.81.40"
alias ssh_mq="ssh root@10.96.91.244"
alias ssh_lifu="ssh root@10.190.1.168"
alias ssh_newton_remote_dev="ssh root@10.96.84.34"


# stock price
alias stock="~/.ticker.sh  $(cat ~/.ticker.conf)"
# git add .
alias g.="git add ."
# git commit -a -m "update"
alias gcm="git commit -m "
# git status
alias gs="git status"
# git push
alias gp="git push"
# git pull original master 
alias gpom="git pull origin master"
# git checkout dev_lifuyao
alias gl="git checkout dev_lifuyao"
# translate into chinese
alias tr="trans :zh"
# cmd/start.sh --fast
alias start="cmd/start.sh --fast"
# alias start="cmd/start.sh --mutagen --fast"
# cmd/log.sh
alias logs="cmd/logs.sh"
# cmd/stop.sh
alias stop="cmd/stop.sh"

alias ssh.connector=~/Apps/ssh-connector/ssh.connector.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# restore tmux session
alias mux="pgrep -vx tmux > /dev/null && \
			tmux new -d -s delete-me && \
			tmux run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh && \
			tmux kill-session -t delete-me && \
			tmux attach || tmux attach"

# hide username@hostname -> username|...
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
