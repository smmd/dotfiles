# Path to your oh-my-zsh installation.
export ZSH=/Users/sagrario.meneses/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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
alias shop='cd /usr/local/var/www/linio/LATAMZ'
alias wlabels='cd /usr/local/var/www/linio/GERAMZ'
alias shop-front='cd /usr/local/var/www/linio/shop-front'
alias b4a='cd /usr/local/var/www/linio/bob-for-alice'
# alias convertEvidence='ffmpeg -i /home/linio/out.ogv /home/linio/Vídeos/out.mp4'

# SSH Linio connections 
alias sh3alice01='ssh smeneses@10.178.128.191'
alias sh3alice02='ssh smeneses@10.178.129.61'
alias shopLaunch01='ssh smeneses@web01-04.linio-staging.com'
alias shopLaunch02='ssh smeneses@web02-04.linio-staging.com'
alias shopLaunchWorker='ssh smeneses@worker04.linio-staging.com'
alias shopLaunchSolr='ssh smeneses@solr04.linio-staging.com'
alias shopLaunchRedis='ssh smeneses@redis04.linio-staging.com'
alias shopLaunchBD='ssh smeneses@db04.linio-staging.com'

#SSH WL connections
alias whiteLabels01='ssh smeneses@172.17.8.67'
alias whiteLabelsSudo01='ssh deploy@172.17.8.67'
alias whiteLabels02='ssh smeneses@172.17.8.68'
alias whiteLabelsSudo02='ssh deploy@172.17.8.68'
alias whiteLabelsBD01='ssh smeneses@172.17.12.44'
alias whiteLabelsBD02='ssh smeneses@172.17.12.45'

# Rocket
function r {
sudo time php /usr/local/var/www/linio/LATAMZ/bin/rocket.php $@
}
source "/usr/local/var/www/linio/LATAMZ/tools/dev/shell-complete/zsh"
# export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 "(%s)") \[\033[01;34m\]$\[\033[00m\] '
alias rWL='sudo php /usr/local/var/www/linio/GERAMZ/bin/rocket.php'
alias wms='cd /usr/local/var/www/linio/mock-wms && grails -Dserver.port=9090 -Ddisable.auto.recompile=true run-app'

# Alice 2.0
alias phpu="/usr/local/var/www/linio/shop-front/bin/phpunit --configuration /usr/local/var/www/linio/shop-front/app/phpunit.xml /usr/local/var/www/linio/shop-front/tests" 
alias phpcs="/usr/local/var/www/linio/shop-front/bin/php-cs-fixer fix"
alias precommit="phpu; phpcs;"

# Worker Alice 2.0
alias clwr="rm -rf lock.mx; rm -rf lock.ec; echo 'Worker Locks removed.'"
export GOPATH=/Users/sagrario.meneses/go
export QUEUE_LISTENER_CONFIG_FILE="/Users/sagrario.meneses/go/src/github.com/LinioIT/shop-front-queue-listener/config/parameters.yml"
alias sfql="$GOPATH/bin/shop-front-queue-listener --config-file=$QUEUE_LISTENER_CONFIG_FILE"

# PEAR
export PATH="/usr/local/mysql/bin:/Users/sagrario.meneses/pear/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
