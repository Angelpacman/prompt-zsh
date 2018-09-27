
export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/angelr/.oh-my-zsh
  
#iniciar tmux por defecto, para desactivar el inicio de tmux hay que descomentar
#las lineas desde el if hasta el fi
if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#POWERLEVEL9K_MODE='flat'
#POWERLEVEL9K_MODE='nerd-font'
POWERLEVEL9K_MODE='awesome-fontconfig'

#POWERLEVEL9K_MODE='awesome-patched'
#POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_MODE='awesome-powerline'
#POWERLEVEL9K_MODE='powerline'
ZSH_THEME="powerlevel9k/powerlevel9k"

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
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

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
plugins=(sudo archlinux tmux colored-man colorize sublime battery zsh-autosuggestions zsh-syntax-highlighting) #git

source $ZSH/oh-my-zsh.sh

# User configuration

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
#video36111915/encuentran_a_novia_cojiendo_de_infiel_en_fiesta_de_amigos
#video36111749/cojiendo_en_casa_de_amigos
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true
POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context os_icon dir dir_writable  rbenv vcs status )
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs ram battery time )  #status battery

POWERLEVEL9K_FOLDER_ICON=" "
POWERLEVEL9K_HOME_ICON=" home "
POWERLEVEL9K_HOME_SUB_ICON=" "  #$(print_icon "LEFT_SUBSEGMENT_SEPARATOR")
POWERLEVEL9K_LOCK_ICON=''
POWERLEVEL9K_DIR_PATH_SEPARATOR="$(print_icon "LEFT_SUBSEGMENT_SEPARATOR")"
#POWERLEVEL9K_DIR_PATH_SEPARATOR="$(print_icon "LEFT_SUBSEGMENT_SEPARATOR")"

#POWERLEVEL9K_<name-of-segment>_<state>_[BACKGROUND|FOREGROUND].
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='196'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='232'

#POWERLEVEL9K_OS_ICON_FOREGROUND='232'
#POWERLEVEL9K_OS_ICON_BACKGROUND='green'


#prompt line
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_STATUS_OK_FOREGROUND='162'
POWERLEVEL9K_STATUS_OK_BACKGROUND='232'   #rosa162


POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='254' #negro232 blanco255-254
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='025' #amarillo184 azul033 azulrey020 #037 azul027-024-025

POWERLEVEL9K_DIR_HOME_FOREGROUND='232' #black232
POWERLEVEL9K_DIR_HOME_BACKGROUND='178' #amarillo184 amarillo178 verde106

POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='232' #black232
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='178' #amarillo184 amarillo178 verde106

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='232' #black232
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='178' #amarillo184 amarillo178  verde106

#reloj
POWERLEVEL9K_TIME_FOREGROUND='black'
POWERLEVEL9K_TIME_BACKGROUND='208' #morado055 naranja208  relojazul037 rosa198 morado162 magenta197 amarillo 178 gris101
#nuevo
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M }" #:%S #
#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M :%S %d/%m/%Y}"

#Ram
POWERLEVEL9K_RAM_ICON='\uf1fe ' #\ue7c6'
POWERLEVEL9K_RAM_BACKGROUND="038" #naranja208
POWERLEVEL9K_RAM_FOREGROUND="232"
POWERLEVEL9K_RAM_VISUAL_IDENTIFIER_COLOR="232"
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)


#battery
#POWERLEVEL9K_BATTERY_ICON=''
POWERLEVEL9K_BATTERY_ICON='' #\ue7c6'    #'\uf241\ue7c6'     #'\uf241 |'

POWERLEVEL9K_BATTERY_LOW_FOREGROUND='black'
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='196'

POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='038'		#cyan037
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='black'  #green040

POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='038'		#cyan037
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='black'   #green040

POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='038'		#cyan037
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='black' #green040

#POWERLEVEL9K_BATTERY_STAGES="▁▂▃▄▅▆▇█"
#POWERLEVEL9K_BATTERY_STAGES=($'▁ ' $'▂ ' $'▃ ' $'▄ ' $'▅ ' $'▆ ' $'▇ ' $'█ ')
#POWERLEVEL9K_BATTERY_STAGES=(
#   $'▏    ▏' $'▎    ▏' $'▍    ▏' $'▌    ▏' $'▋    ▏' $'▊    ▏' $'▉    ▏' $'█    ▏'
#   $'█▏   ▏' $'█▎   ▏' $'█▍   ▏' $'█▌   ▏' $'█▋   ▏' $'█▊   ▏' $'█▉   ▏' $'██   ▏'
#   $'██   ▏' $'██▎  ▏' $'██▍  ▏' $'██▌  ▏' $'██▋  ▏' $'██▊  ▏' $'██▉  ▏' $'███  ▏'
#   $'███  ▏' $'███▎ ▏' $'███▍ ▏' $'███▌ ▏' $'███▋ ▏' $'███▊ ▏' $'███▉ ▏' $'████ ▏'
#   $'████ ▏' $'████▎▏' $'████▍▏' $'████▌▏' $'████▋▏' $'████▊▏' $'████▉▏' $'█████▏' )

#POWERLEVEL9K_BATTERY_STAGES=($'\u2581 ' $'\u2582 ' $'\u2583 ' $'\u2584 ' $'\u2585 ' $'\u2586 ' $'\u2587 ' $'\u2588 ')
#POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND=(196 202 208 214 220 226 190 154 118 82 46)


#multilineas del prompt izquierdo
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\n"
 local user_symbol="$"
    if [[ $(print -P "%#") =~ "#" ]]; then
        user_symbol = "#"
    fi
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%{%B%F{250}%K{238}%}     %{%b%f%k%F{238}%}%{%f%}   $user_symbol " #dentro de ambos corchetes {} iba rosa 197
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%{%B%F{250}%K{238}%}     %{%b%f%k%F{238}%}%{%f%}   $user_symbol " #dentro de ambos corchetes {} iba rosa 197
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{250}%K{238}%}     %{%b%f%k%F{238}%}%{%f%}   $user_symbol " #dentro de ambos corchetes {} iba rosa 197


#vcs
POWERLEVEL9K_VCS_GIT_ICON=' '
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='042'	#verde082 #azul051
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black,bold'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='165' #naranja166
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='197'   #rojo001
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='232'

#highlights
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[cursor]='bold'

#ZSH_HIGHLIGHT_STYLES[alias]='fg=blue,bold'
#ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[function]='fg=blue,bold'
#ZSH_HIGHLIGHT_STYLES[command]='fg=magenta,bold'
#ZSH_HIGHLIGHT_STYLES[precommand]='fg=yellow,bold'
#ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=red,bold'

ZSH_HIGHLIGHT_STYLES[default]=fg=208                     #none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=005
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=005,standout

ZSH_HIGHLIGHT_STYLES[alias]=fg=051,bold,underline 		#226 amarillo
#ZSH_HIGHLIGHT_STYLES[alias]=bg=008		 		#226 amarillo
ZSH_HIGHLIGHT_STYLES[builtin]=fg=051,bold,underline       #226 amarillo
#ZSH_HIGHLIGHT_STYLES[builtin]=bg=008	       #226 amarillo


ZSH_HIGHLIGHT_STYLES[function]=fg=009,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=082,underline   #amarillo226   #naranja208  #azulcyan051 verde082

ZSH_HIGHLIGHT_STYLES[precommand]=fg=051,bold,underline
#ZSH_HIGHLIGHT_STYLES[precommand]=bg=008


ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
ZSH_HIGHLIGHT_STYLES[path]=bg=059          #azulcyan051  #morado126o091  aqua023
ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline  #white original
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=078 			#none
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=078 			#none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=040 	#063
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=033		#naranja214
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=006  #original rojo001
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=006    #original rojo001
ZSH_HIGHLIGHT_STYLES[assign]=bg=197        #  none

#custom comands
#f81f
POWERLEVEL9K_CUSTOM_PYTHON="echo -n '\uf81f' Python"
POWERLEVEL9K_CUSTOM_PYTHON_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_PYTHON_BACKGROUND="blue"


#acortadores de directorios en prompt principal
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
#POWERLEVEL9K_SHORTEN_DELIMITER=".."
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"




export PATH=/home/angelr/anaconda3/bin:$PATH
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export LD_LIBRARY_PATH=/usr/local/lib
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

# added by Anaconda3 4.4.0 installer
export PATH="/home/angelr/anaconda3/bin:$PATH"

#agregado por mi para configurar la variable de entorno java oracle

export PATH="$PATH:HOME/.jdk1.8.0_131/jre/bin"
export PATH="$PATH:HOME/.jdk1.8.0_131/bin"




#agragado para Android Studio
#export PATH="$PATH:/usr/local/android-studio/bin"



#agregado para nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

#powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /home/angelr/anaconda3/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh


export GIO_EXTRA_MODULES=/usr/lib/x86_64-linux-gnu/gio/modules/


export seisan=/home/angelr/Seisan/COM/SEISAN.bash




#seismic unix
export CWPROOT=~/cwp/SeisUnix
export PATH=$PATH:~/cwp/SeisUnix/bin

