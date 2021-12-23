
#export TERM="termite-256color" #esto fue agregado recientemente para la emulacion al parecer sin exirto xdxdd
export TERM="xterm-256color"
# If you come from bash you might hayve to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/angelr/.oh-my-zsh
  
#iniciar tmux por defecto, para desactivar el inicio de tmux hay que descomentar
##las lineas desde el if hasta el fi
###if command -v tmux>/dev/null; then
###  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
###fi

. /usr/share/LS_COLORS/dircolors.sh


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
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="powerlevel10k/powerlevel10k"

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
POWERLEVEL9K_OS_ICON='\uf17c'
plugins=(sudo archlinux colorize sublime battery zsh-autosuggestions zsh-syntax-highlighting docker docker-compose colored-man-pages) #git tmux colored-man zsh-autosuggestions 

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

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context os_icon dir dir_writable rbenv virtualenv vcs) #context status rbenv
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs docker_machine anaconda)  #status battery load custom_wifi_signal ram load time

POWERLEVEL9K_FOLDER_ICON="  /"
POWERLEVEL9K_HOME_ICON=" home" # ⇋⇋⇋(づ｡◕‿‿◕｡｡)づ⇋⇋⇋
POWERLEVEL9K_HOME_SUB_ICON=" "  #$(print_icon "LEFT_SUBSEGMENT_SEPARATOR")
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
POWERLEVEL9K_ANACONDA_BACKGROUND='048'  #'002'  #lime106 green070
POWERLEVEL9K_ANACONDA_FOREGROUND='235'  #'232'

#POWERLEVEL9K_OS_ICON='\uf303 '
#POWERLEVEL9K_OS_ICON='\uf83c '
#POWERLEVEL9K_OS_ICON='\uf312 '
POWERLEVEL9K_OS_ICON='\uf17c'
POWERLEVEL9K_OS_ICON_FOREGROUND='039'   #'green'
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
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='055' #amarillo184 azul033 azulrey020 #037 azul027-024-025 018 063

POWERLEVEL9K_DIR_HOME_FOREGROUND='255' #black232
POWERLEVEL9K_DIR_HOME_BACKGROUND='135' #amarillo184 amarillo178 verde106 220

POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='255' #black232
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='135' #amarillo184 amarillo178 verde106 220

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='255' #black232
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='135' #amarillo184 amarillo178  verde106 220

#reloj
POWERLEVEL9K_TIME_FOREGROUND='232'
POWERLEVEL9K_TIME_BACKGROUND='035' #morado055 naranja208  relojazul037 rosa198 morado162 magenta197 amarillo 178 gris101  167 o 197 106 161 035
#nuevo
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}" #:%S # # 
#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M :%S %d/%m/%Y}"

#Ram
POWERLEVEL9K_RAM_ICON='\uf1fe ' #\ue7c6'
POWERLEVEL9K_RAM_BACKGROUND="055" #naranja208 cyan0-3-8 240
POWERLEVEL9K_RAM_FOREGROUND="230" #232
POWERLEVEL9K_RAM_VISUAL_IDENTIFIER_COLOR="232"
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)

#load
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND='048'       #cyan037 cyan0-3-8 gris240
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND='232'   #green040
POWERLEVEL9K_LOAD_WARNING_FOREGROUND='126'
POWERLEVEL9K_LOAD_WARNING_BACKGROUND='232'
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND='160' 
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND='232'

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


#multilineas del prompt izquierdo
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\n"
 local user_symbol="$"
    if [[ $(print -P "%#") =~ "#" ]]; then
        user_symbol = "#"
    fi
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%{%B%F{250}%K{238}%}     %{%b%f%k%F{238}%}%{%f%}   $user_symbol " #dentro de ambos corchetes {} iba rosa 197
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%{%B%F{250}%K{238}%}     %{%b%f%k%F{238}%}%{%f%}   $user_symbol " #dentro de ambos corchetes {} iba rosa 197
##POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{250}%K{236}%}     %{%b%f%k%F{236}%}%{%f%}   $user_symbol " #dentro de ambos corchetes {} iba rosa 197
##POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{039}%K{233}%} \uf303  KDE %{%b%f%k%F{233}%}%{%f%}     \uf553 $user_symbol " #flexa \uf553
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{039}%K{233}%} \uf303  KDE %{%b%f%k%F{233}%}%{%f%} 🐧  👉  $user_symbol " #flexa \uf553
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{039}%K{233}%} \uf303  KDE %{%b%f%k%F{233}%}%{%f%} 👉  🐧 $user_symbol " #flexa \uf553
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{039}%K{233}%} \uf303  KDE %{%b%f%k%F{233}%}%{%f%} 👉  🐧 %F{231}$user_symbol%F{black} " #flexa \uf553
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{039}%K{234}%} \uf31a  KDE %{%b%f%k%F{234}%}%{%f%} 👉  🐧 %F{231}$user_symbol%F{black} " #flexa \uf553
# esta cochinada no sirve xdxd POWERLEVEL9K_MULTILINE_LAST_PROMPT_ELEMENTS=(anaconda)

#vcs
#POWERLEVEL9K_VCS_GIT_ICON='\uf113 ' #
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='048'	#verde082 #azul051 verde042 046
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='233'     #black,bold
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='165' #naranja166
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='233'      #black
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='197'   #rojo001
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='233'     #232        #black

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

ZSH_HIGHLIGHT_STYLES[default]=fg=051                     #none #208naranja #057azulmagenta
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=197				#005rosaculero
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=197,standout		#005rosaculero

ZSH_HIGHLIGHT_STYLES[alias]=fg=046,bold,underline 		#226amarillo  #051cyan
#ZSH_HIGHLIGHT_STYLES[alias]=bg=008		 		#226 amarillo
ZSH_HIGHLIGHT_STYLES[builtin]=fg=046,bold,underline       #226amarillo	#051cyan
#ZSH_HIGHLIGHT_STYLES[builtin]=bg=008	       #226 amarillo


ZSH_HIGHLIGHT_STYLES[function]=fg=046,bold #009 rojillo pitero #046greenlime
ZSH_HIGHLIGHT_STYLES[command]=fg=129,underline   #amarillo226   #naranja208  #azulcyan051 verde082

ZSH_HIGHLIGHT_STYLES[precommand]=fg=039,bold,underline			#051cyan  039azyl
#ZSH_HIGHLIGHT_STYLES[precommand]=bg=008


ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=063   #antes=none (&& ;)
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
ZSH_HIGHLIGHT_STYLES[path]=fg=231           #azulcyan051  #morado126o091  aqua023  059
ZSH_HIGHLIGHT_STYLES[globbing]=fg=208		#063azulpalido
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline  #white original
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=197 			#none
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=197 			#none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=040 	#063 #040greenturtle
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=214		#naranja214	#033azulteal
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=006  #original rojo001
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=006    #original rojo001
ZSH_HIGHLIGHT_STYLES[assign]=bg=197        #  none

ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=255         #(-o)

#custom comands
#f81f
POWERLEVEL9K_CUSTOM_PYTHON="echo -n '\uf81f' Python"
POWERLEVEL9K_CUSTOM_PYTHON_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_PYTHON_BACKGROUND="blue"


#acortadores de directorios en prompt principal##############################################################
##POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
##POWERLEVEL9K_SHORTEN_DELIMITER=".."
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"



#export PATH=/home/angelr/.Anaconda3/bin:$PATH
##export LANG=en_US.UTF-8								#Esto afecta en archlinux
##export LC_ALL=en_US.UTF-8								#Esto afecta en archlinux

export LD_LIBRARY_PATH=/usr/local/lib
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH


#agregado por mi para configurar la variable de entorno java oracle
#export PATH="$PATH:HOME/.jdk1.8.0_131/jre/bin"
#export PATH="$PATH:HOME/.jdk1.8.0_131/bin"


#agragado para Android Studio
#export PATH="$PATH:/usr/local/android-studio/bin"


#agregado para nvm (quitado en nov 9 2021 para vscode)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


#powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /home/angelr/anaconda3/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh


export GIO_EXTRA_MODULES=/usr/lib/x86_64-linux-gnu/gio/modules/


#para seisan
#seisan=/home/angelr/Seisan/COM/SEISAN.bash
#export seisan=/home/angelr/Seisan/COM/SEISAN.bash
#export PATH=$PATH:~/Seisan/COM/SEISAN.bash


#seismic unix
#export CWPROOT=~/cwp/SeisUnix
#export PATH=$PATH:~/cwp/SeisUnix/bin


#Exportando ruby para una aplicacion gem "ls colors"
export PATH=${PATH}:/home/angelr/.gem/ruby/3.0.0/bin  ###
#file necesario para  gem ls colors
source $(dirname $(gem which colorls))/tab_complete.sh  ###
#abreviacion de colorls
#alias l='colorls -l --sd'  ###
##alias ls='colorls --group-directories-first --report'
#alias ls='colorls --group-directories-first'  ###
alias lt='colorls --tree'  ###


###COLORS EN LS
#ls colors instlado desde: $ yaourt  lscolors-git
#ó alternativamente(mejor): wget https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS -O $HOME/.dircolors
#eval $(dircolors -b $HOME/.dircolors

#Este otro tema se instala mas facil con sudo pacman -S vivid
#export LS_COLORS="$(vivid generate molokai)"

# estos colores son nuestros(22/12/2021)
. /usr/share/LS_COLORS/dircolors.sh


#para que matlab grafique usando librarea libstdc
#alias matlab='LD_PRELOAD=/usr/lib64/libstdc++.so.6 /usr/local/MATLAB/R2017a/bin/glnxa64/MATLAB -desktop'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/angelr/.Anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"  ###
if [ $? -eq 0 ]; then  ###
    eval "$__conda_setup"  ###
else  ###
    if [ -f "/home/angelr/.Anaconda3/etc/profile.d/conda.sh" ]; then  ###
        . "/home/angelr/.Anaconda3/etc/profile.d/conda.sh"  ###
    else  ###
        export PATH="/home/angelr/.Anaconda3/bin:$PATH"  ###
    fi  ###
fi  ###
unset __conda_setup  ###
# <<< conda initialize <<<


###agregado por IBM cloude a fin de realizar el autocompletado en la terminal
#source /usr/local/ibmcloud/autocomplete/zsh_autocomplete


# esto fue necesario para mostrar host de @manjaro en el prompt luego de que la instalacion de r-essencials
# en conda lo modificara 20-julio-2019
#POWERLEVEL9K_CONTEXT_TEMPLATE="%n@`hostname -f`"


#cowsay -f milk hey, los burritos son alimento siono raza 


###sugerencia de instalascion de osgeo para qgis
#export PATH="$HOME/.local/bin:$PATH"#!/bin/zsh


#GAmmapy 03/12/20
export GAMMAPY_DATA=/home/angelr/gammapy-tutorials/datasets


#neofetch | lolcat
echo " "
figlet -f "ANSI Shadow" "gnu linux" | lolcat -a -s 250


#09/02/21
#PROMPT ZSH
autoload -Uz promptinit
promptinit


# alias for takataka
### alias トナシラ　セチソモチミ　メトンンナ="sudo pacman -Syyu"
### alias リト="ls"
### alias リ="l"
### alias リト　メリチ="ls -la"
### alias リト　メリ="ls -l"
### alias リカ="lt"
### alias ソシ="cd"


#intercambiar nombre de dos archivos 29/04/21
function cambiar()         
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE && mv "$2" "$1" && mv $TMPFILE "$2"
}
# export cambiar


#alias para comando exa:
alias ls="exa --icons --sort=ext" 
#alias lexa-l="exa --long --header --git --icons --sort=ext"
alias lexa-l="exa --bytes --long --header --git --icons --sort=ext -t=mod --time-style=long-iso --group"
alias l="exa --bytes --long --header --git --icons --sort=ext -t=mod --time-style=long-iso --group"
alias ll="exa --bytes --long --header --git --icons --sort=ext -t=mod --time-style=long-iso"
#alias lt="exa --bytes --icons --sort=ext --tree"


# Screenfetch colorido
alias screenfetch="screenfetch | lolcat -a -s 100"
alias neofetch="neofetch | lolcat -a -s 100"

# No tengo idea de para que concha era esto
#export DISPLAY=:0.0
# Esto me permitió correr aplicaciones graficas desde la terminal como atom, code, etc...
#export DISPLAY=:1 # Edit: Comenté esta variable y al parecer no era necesaria

# Arreglar transparencias de zoom con xcompmgr y transset-def
#[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null



# Arreglar busqueda de Mesa to iris  con opengl al usar UI desplegada en QTpython 9/ago/2021
# https://bbs.archlinux.org/viewtopic.php?id=255032
export MESA_LOADER_DRIVER_OVERRIDE=i965

# IDL Licensing add on 03/septiembre/2021
#source ITT_DIR/idl70/bin/idl_setup  
# abrir .login para cargar ipy kernel de idl
#. ~/.login
#export PATH=/home/angelr/.Anaconda3/bin:${PATH}
#export PYTHONHOME=/home/angelr/.Anaconda3
#export PYTHONPATH=/usr/local/itt/idl/bin/bin.linux.x86_64
#export PYTHONPATH=${PYTHONPATH}:/usr/local/itt/idl71/lib/bridges

# settings de idl
. /usr/local/itt/idl71/bin/idl_setup.bash
# export IDL_PATH=${IDL_PATH}:/usr/local/itt/idl71/lib
export IDL_PATH=/usr/local/itt/idl71/lib
export IDL_PATH=${IDL_PATH}:/home/angelr/.idl/coyote
export IDL_PATH=${IDL_PATH}:/home/angelr/.idl/catalyst

#export IDL_PATH=/usr/local/itt/idl71/lib:/home/angelr/.idl/catalyst:/home/angelr/.idl/coyote:

# intentar correr sswidl en zsh
###export IDL_DIR="/usr/local/itt/idl"
###export LASCO_DATA="/usr/local/ssw/soho/lasco/idl/data"
###export NRL_LIB="/usr/local/ssw/soho/lasco"
###export SSW="/usr/local/ssw"
###export SSW_INSTR="[mjastereo nrl ontology s3drs sbrowser secchi sunspice lasco soho stereo packages]"
# Los export funcinan pero setup no cargará porque fue escrito para correr en tcsh, la solucion es crear un nuevo setup.ssw
# que sea compatible con zsh
####source $SSW/gen/setup/setup.ssw /quiet
