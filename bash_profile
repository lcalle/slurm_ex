#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases
#
#  Sections:
#  1.   Environment Configuration
#  2.   Make Terminal Better (remapping defaults and adding functionality)
#  3.   File and Folder Management
#  4.   Searching
#  5.   Process Management
#  6.   Networking
#  7.   System Operations & Information
#  8.   Web Development
#  9.   Reminders & Notes
#
# 
echo "--------------------------------------------------------------------------- " 
echo "                            ___________ _                                   " 
echo "  \/                    __/   .::::.-,-(/-/)                                " 
echo "                     _/:  .::::.-, .-,\/\_,*******          __ (_))         " 
echo "        \/          /:  .::::./   -._-.  d\|               (_))_(__))       " 
echo "                     /: (""""/    ,.  (__/||           (_))__(_))--(__))    "  
echo "                      \::).-,  -._  \/ \\/\|                                " 
echo "             __ _ .-,,)/  ,-,. . ,. |  (i_O                                "  
echo "          .-:      \       -,      ,\|                                      "  
echo "     _ _./      .-'|       '.  (    \\                         % % %        "   
echo "  .-:   :      ;_  \         '-'\  /|/      @ @ @             % % % %       "    
echo " /      )\_      ;- )_________.-|_/^\      @ @ @@@           % %\/% %       "  
echo " (   .-;   )-._-:  /        \(/\;-._ \.     @|@@@@@            ..|........  "     
echo "  (   )  _//_/|:  /           \()    \_\     |/_@@             ).-._.-._.-  "   
echo "   ( (   \()^_/)_/             )/      \\    /                /   /         "    
echo "    )  _.-\\.\(_)__._.-.-.-.-.//_.-|-.-.)\-./._              /              "   
echo ".-.-.-;   _o\ \\\     '::'   (o_ '-.-' |__\'-.-;~ ~ ~ ~ ~ ~~/   /\          "     
echo "          \ /  \\\__          )_\    .:::::::.-;\          .- - -|          "   
echo "     :::;;;:::::^)__\:::::::::::::::::'''''''-.  \                .- - -    "     
echo "    :::::::   ;;;;;;;;;;   ;;;;;;;;;;;;;:::. -.\  \                         "
echo "     ;:::::                                     \__\                        "   
echo "--------------------------------------------------------------------------- "

#NOTE
#gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 13
#gsettings set org.gnome.desktop.peripherals.keyboard delay 200

#change PROMPT
#export PS1="\d \A \u:\W> $ "
export PS1="griz@\W$ "
export PS2="| => "

#------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------
alias ll='ls -lh'
alias lll='ls -alF'
alias lsdir='ls -d */'

cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string

alias sacctv="sacct --format=JobID,Jobname,state,elapsed,ncpus,nodelist"
alias squeuev="squeue -a"

