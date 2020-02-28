
#export TERM="termite-256color" #esto fue agregado recientemente para la emulacion al parecer sin exirto xdxdd
export TERM="xterm-256color"
# If you come from bash you might hayve to change your $PATH.
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
#POWERLEVEL9K_MODE='awesome-config'
#POWERLEVEL9K_MODE='awesome-fontconfig'

#POWERLEVEL9K_MODE='awesome-mapped-fontconfig'
#POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_MODE='awesome-powerline'
#POWERLEVEL9K_MODE='powerline'
#ZSH_THEME="spaceship"
ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="powerlevel10k/powerlevel10k"

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
plugins=(sudo archlinux colorize sublime battery zsh-autosuggestions zsh-syntax-highlighting) #git tmux colored-man

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
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true
POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context status dir dir_writable rbenv anaconda virtualenv vcs) #context
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs docker_machine ram load time )  #status battery load custom_wifi_signal ram

POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_HOME_ICON=" home" # ⇋⇋⇋(づ｡◕‿‿◕｡｡)づ⇋⇋⇋
POWERLEVEL9K_HOME_SUB_ICON=""  #$(print_icon "LEFT_SUBSEGMENT_SEPARATOR")
POWERLEVEL9K_LOCK_ICON=''
POWERLEVEL9K_DIR_PATH_SEPARATOR="$(print_icon "LEFT_SUBSEGMENT_SEPARATOR")"
#POWERLEVEL9K_DIR_PATH_SEPARATOR="$(print_icon "LEFT_SUBSEGMENT_SEPARATOR")"

#POWERLEVEL9K_<name-of-segment>_<state>_[BACKGROUND|FOREGROUND].
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='001'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='232'

#anaconda enviroments
POWERLEVEL9K_ANACONDA_LEFT_DELIMITER=''
POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER=''
POWERLEVEL9K_PYTHON_ICON='\uf81f'  #e63c   \uf81f \uf135
POWERLEVEL9K_ANACONDA_BACKGROUND='234'  #'002'  #lime106 green070
POWERLEVEL9K_ANACONDA_FOREGROUND='035'  #'232'

#POWERLEVEL9K_OS_ICON='\uf303 '
#POWERLEVEL9K_OS_ICON='\uf83c '
POWERLEVEL9K_OS_ICON='\uf312 '
POWERLEVEL9K_OS_ICON_FOREGROUND='034'   #'green'
POWERLEVEL9K_OS_ICON_BACKGROUND='232'


#prompt line
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_STATUS_OK_FOREGROUND='040'		#162' 
POWERLEVEL9K_STATUS_OK_BACKGROUND='233'   #rosa162
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='160'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='233'   #rosa162



POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='255' #negro232 blanco255-254
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='018' #amarillo184 azul033 azulrey020 #037 azul027-024-025

POWERLEVEL9K_DIR_HOME_FOREGROUND='232' #black232
POWERLEVEL9K_DIR_HOME_BACKGROUND='178' #amarillo184 amarillo178 verde106

POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='232' #black232
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='178' #amarillo184 amarillo178 verde106

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='232' #black232
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='178' #amarillo184 amarillo178  verde106

#reloj
POWERLEVEL9K_TIME_FOREGROUND='black'
POWERLEVEL9K_TIME_BACKGROUND='208' #morado055 naranja208  relojazul037 rosa198 morado162 magenta197 amarillo 178 gris101  167 o 197 106 161
#nuevo
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}" #:%S # # 
#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M :%S %d/%m/%Y}"

#Ram
POWERLEVEL9K_RAM_ICON='\uf1fe ' #\ue7c6'
POWERLEVEL9K_RAM_BACKGROUND="038" #naranja208 cyan0-3-8
POWERLEVEL9K_RAM_FOREGROUND="232"
POWERLEVEL9K_RAM_VISUAL_IDENTIFIER_COLOR="232"
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)


#battery
#POWERLEVEL9K_BATTERY_ICON=''
POWERLEVEL9K_BATTERY_ICON='' #\ue7c6'    #'\uf241\ue7c6'     #'\uf241 |'

POWERLEVEL9K_BATTERY_LOW_FOREGROUND='black'
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='196'

POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='038'		#cyan037 cyan0-3-8
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='black'  #green040

POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='038'		#cyan037 cyan0-3-8
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='black'   #green040

POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='038'		#cyan037 cyan0-3-8
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
##POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{250}%K{236}%}     %{%b%f%k%F{236}%}%{%f%}   $user_symbol " #dentro de ambos corchetes {} iba rosa 197
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{040}%K{233}%} \uf312  KDE %{%b%f%k%F{233}%}%{%f%}   $user_symbol "
# esta cochinada no sirve xdxd POWERLEVEL9K_MULTILINE_LAST_PROMPT_ELEMENTS=(anaconda)

#vcs
#POWERLEVEL9K_VCS_GIT_ICON='\uf113 ' #
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='046'	#verde082 #azul051 verde042
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black,bold'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='165' #naranja166
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='197'   #rojo001
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'     #232

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

ZSH_HIGHLIGHT_STYLES[default]=fg=057                     #none #208naranja
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=005
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=005,standout

ZSH_HIGHLIGHT_STYLES[alias]=fg=051,bold,underline 		#226 amarillo
#ZSH_HIGHLIGHT_STYLES[alias]=bg=008		 		#226 amarillo
ZSH_HIGHLIGHT_STYLES[builtin]=fg=051,bold,underline       #226 amarillo
#ZSH_HIGHLIGHT_STYLES[builtin]=bg=008	       #226 amarillo


ZSH_HIGHLIGHT_STYLES[function]=fg=046,bold #009 rojillo pitero
ZSH_HIGHLIGHT_STYLES[command]=fg=082,underline   #amarillo226   #naranja208  #azulcyan051 verde082

ZSH_HIGHLIGHT_STYLES[precommand]=fg=051,bold,underline
#ZSH_HIGHLIGHT_STYLES[precommand]=bg=008


ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
ZSH_HIGHLIGHT_STYLES[path]=bg=240         #azulcyan051  #morado126o091  aqua023  059
ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline  #white original
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=197 			#none
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=197 			#none
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
##POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
##POWERLEVEL9K_SHORTEN_DELIMITER=".."
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"


#load
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND='038'       #cyan037 cyan0-3-8
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND='black'   #green040



#export PATH=/home/angelr/.Anaconda3/bin:$PATH
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export LD_LIBRARY_PATH=/usr/local/lib
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

# added by Anaconda3 4.4.0 installer
# export PATH="/home/angelr/anaconda3/bin:$PATH"  # commented out by conda initialize

#agregado por mi para configurar la variable de entorno java oracle

export PATH="$PATH:HOME/.jdk1.8.0_131/jre/bin"
export PATH="$PATH:HOME/.jdk1.8.0_131/bin"




#agragado para Android Studio
export PATH="$PATH:/usr/local/android-studio/bin"



#agregado para nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

#powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /home/angelr/anaconda3/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh


export GIO_EXTRA_MODULES=/usr/lib/x86_64-linux-gnu/gio/modules/


#para seisan
seisan=/home/angelr/Seisan/COM/SEISAN.bash
export seisan=/home/angelr/Seisan/COM/SEISAN.bash
export PATH=$PATH:~/Seisan/COM/SEISAN.bash




#seismic unix
export CWPROOT=~/cwp/SeisUnix
export PATH=$PATH:~/cwp/SeisUnix/bin



###madagascar lunes
#export RSFROOT=/usr/local/rsf # directory where Madagascar will be installed. 
#if [ -n "$PYTHONPATH" ]; then
#export PYTHONPATH=${PYTHONPATH}:$RSFROOT/lib
#else
#export PYTHONPATH=$RSFROOT/lib
#fi
#export PATH=$RSFROOT/bin:$PATH
#export DATAPATH=/var/tmp/
#export MANPATH=$RSFROOT/share/man:$(manpath)
#export LD_LIBRARY_PATH=$RSFROOT/lib:$LD_LIBRARY_PATH


#Exportando ruby para una aplicacion gem "ls colors"
export PATH=${PATH}:/home/angelr/.gem/ruby/2.7.0/bin
##file necesario para  gem ls colors
source $(dirname $(gem which colorls))/tab_complete.sh
###abreviacion de colorls
alias l='colorls -lA --sd --report'
alias ls='colorls --group-directories-first --report'
alias lt='colorls --tree'

#ls colors onstlado desde: $ yaourt  lscolors-git
#ó alternativamente(mejor): wget https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS -O $HOME/.dircolors
eval $(dircolors -b $HOME/.dircolors)


##peliculas Hereditary, mandy, suspiria


#para que matlab grafique usando librarea libstdc
#alias matlab='LD_PRELOAD=/usr/lib64/libstdc++.so.6 /usr/local/MATLAB/R2017a/bin/glnxa64/MATLAB -desktop'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/angelr/.Anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)" ##
if [ $? -eq 0 ]; then ##
    eval "$__conda_setup" ##
else ##
    if [ -f "/home/angelr/.Anaconda3/etc/profile.d/conda.sh" ]; then ##
        . "/home/angelr/.Anaconda3/etc/profile.d/conda.sh" ##
    else ##
        export PATH="/home/angelr/.Anaconda3/bin:$PATH" ##
    fi ##
fi ##
unset __conda_setup ##
# <<< conda initialize <<<


###agregado por IBM cloude a fin de realizar el autocompletado en la terminal
#source /usr/local/ibmcloud/autocomplete/zsh_autocomplete



# esto fue necesario para mostrar host de @manjaro en el prompt luego de que la instalacion de r-essencials
# en conda lo modificara 20-julio-2019
POWERLEVEL9K_CONTEXT_TEMPLATE="%n@`hostname -f`"



#cowsay -f milk hey, los burritos son alimento siono raza 
