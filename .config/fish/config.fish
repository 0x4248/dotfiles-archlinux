alias python python3
alias pip pip3
alias ll 'ls -alF'
alias la 'ls -A'
alias l 'ls -CF'
alias grep 'grep --color=auto'
alias c clear
alias cls clear
alias n nvim
alias e exit
alias nfetch fastfetch
alias hfetch hyfetch -b fastfetch
alias fishrc="nvim /Users/lewis/.config/fish/config.fish"

function fish_greeting
    set CYAN (set_color -o cyan)
    set NC (set_color normal)
    echo "Welcome $(uname -r)"
    echo ""
    echo "    * Hostname: $CYAN$(hostnamectl hostname)$NC"
    echo "    * Uptime: $CYAN$(uptime)$NC"
    echo "    * Logged in as: $CYAN$(whoami)$NC"
    echo "    * Shell: $CYAN$SHELL$NC"
    echo ""
    echo "---------------------------------"
    echo "Shell login time:"
    echo "$CYAN$(date)$NC"
    echo "---------------------------------"
end

function owoii
   owo $argv | figlet
end

set -x PATH $PATH ~/.scripts

if status is-interactive
end