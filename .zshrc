# Path to your oh-my-zsh installation.
export ZSH=/Users/smmd/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster-new-line"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

##############################################################################
# History Configuration
##############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

#PHP  MAC
alias php-switch='~/.bin/php-switch/php-switch'
PHP_HOME=""
export PATH=$PHP_HOME:$PATH
PATH="/usr/local/sbin:$PATH"

# Composer
alias composer="php /usr/local/bin/composer.phar"

# MySql
alias mysqlStart='sudo /usr/local/Cellar/mysql56/5.6.27/support-files/mysql.server start'
alias mysqlReload= 'sudo /usr/local/Cellar/mysql56/5.6.27/support-files/mysql.server reload'
alias mysqlStop='sudo /usr/local/Cellar/mysql56/5.6.27/support-files/mysql.server stop'

# Funny
alias fuck='sudo $(history \!\!)'
alias weee='yes "$(seq 231 -1 16)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .02; done'

# alias convertEvidence='ffmpeg -i /home/linio/out.ogv /home/linio/Vídeos/out.mp4'

# LINIO #
alias shop='cd /Users/smmd/Projects/Linio/shop'
alias shop-up="shop; env APPLICATION_ENV=dev APPLICATION_STORE=mx php -dxdebug.remote_port=9001 -S 127.0.0.1:8003 -t bob/public/"

alias shop-front='cd /Users/smmd/Projects/Linio/shop-front'
alias shop-front-up="shop-front; env STORE=mx php -dxdebug.remote_port=9001 -S localhost:8001 -t public/"

alias b4a='cd /Users/smmd/Projects/Linio/bob-for-alice'
alias b4a-up="b4a; env STORE=mx php -dxdebug.remote_port=9001 -S 0.0.0.0:8002 -t public/"

alias papi='cd /Users/smmd/Projects/Linio/partner-api'
alias papi-up="papi; env STORE=mx php -dxdebug.remote_port=9001 -S 0.0.0.0:8003 -t public/"

alias srt-api='cd /Users/smmd/Projects/Linio/srt-api'
alias srt-api-up="srt-api; php -dxdebug.remote_port=9001 -S 0.0.0.0:8004 -t web/"

alias srt-backend='cd /Users/smmd/Projects/Linio/srt-backend'
alias srt-backend-up="srt-backend; php bin/console server:start 0.0.0.0:8005"
alias srt-backend-down="srt-backend; php bin/console server:stop"

alias staging-web01='ssh -----'
alias development-web01='ssh ----'
alias staging-worker='ssh ----'
alias development-worker='ssh ----'

# Rocket
function r {
sudo time php /Users/smmd/Projects/Linio/shop/bin/rocket.php $@
}
source "/Users/smmd/Projects/Linio/shop/tools/dev/shell-complete/zsh"
# export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 "(%s)") \[\033[01;34m\]$\[\033[00m\] '
alias wms='cd /usr/local/var/www/linio/mock-wms && grails -Dserver.port=9090 -Ddisable.auto.recompile=true run-app'

# Alice 2.0
alias phpu="/Users/smmd/Projects/Linio/shop-front/bin/phpunit --configuration /Users/smmd/Projects/Linio/shop-front/app/phpunit.xml /Users/smmd/Projects/Linio/shop-front/tests" 
alias phpcs="/Users/smmd/Projects/Linio/shop-front/bin/php-cs-fixer fix"
alias precommit="phpu; phpcs;"

# Worker Alice 2.0
alias clwr="rm -rf lock.mx; rm -rf lock.ec; echo 'Worker Locks removed.'"
export GOPATH=/Users/smmd/go
export QUEUE_LISTENER_CONFIG_FILE="/Users/sagrario.meneses/go/src/github.com/LinioIT/shop-front-queue-listener/config/parameters.yml"
alias sfql="$GOPATH/bin/shop-front-queue-listener --config-file=$QUEUE_LISTENER_CONFIG_FILE"

#Caddy
alias caddy="/Users/smmd/caddy_darwin_amd64/caddy -conf=/Users/smmd/conf/Caddyfile"

# PEAR
export PATH="/usr/local/mysql/bin:/Users/smmd/pear/bin:/Users/smmd/.composer/vendor/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

plugins=(git brew npm history-substring-search)

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
