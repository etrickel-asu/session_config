alias rsync='rsync -vaz'

alias setdir='echo $(pwd) > /tmp/workdir'

alias vi="vim"

alias mkcd='_(){ mkdir -p $1; cd $1; }; _'

# reload shell config
alias rebash='. ~/.bashrc'

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

alias gbb64='gcc -Wall -O0 -g -fno-omit-frame-pointer -Wno-deprecated-declarations -D_FORTIFY_SOURCE=0 -fno-pie -Wno-format -Wno-format-security -z norelro -z execstack -fno-stack-protector -mpreferred-stack-boundary=4'

alias gbb='gcc -Wall -O0 -g -fno-omit-frame-pointer -Wno-deprecated-declarations -D_FORTIFY_SOURCE=0 -fno-pie -Wno-format -Wno-format-security -z norelro -z execstack -fno-stack-protector -m32 -mpreferred-stack-boundary=2'

#alias debugred='gdb_android -ex "file ezexploit" -ex "target remote 192.168.0.31:10000" -ex "set solib-search-path ~/red/libs/" --quiet -q' 

alias ssh='ssh -XY -o ServerAliveInterval=120 -o ServerAliveCountMax=1 '

alias gdb='gdb --quiet'

#alias angr='source ~/angr/bin/activate'

rex(){
  for i in `seq 8 20`;
  do
    if xset q 2> /dev/null 1> /dev/null
    then
        # DONE
	echo "Success DISPLAY is now ${DISPLAY}."
	break
    else
	export DISPLAY=localhost:${i}.0
	echo "Trying ${DISPLAY}...."
    fi
  done    

}

alias cd..='cd ..'
alias ..='cd ..'

alias istatus='curl -s "http://$(cat /home/etrickel/ictf/ares/gm_pub_ip)/instances/status" --header "Authorization: Bearer $(cat /home/etrickel/ictf/ares/gm_token)" | python -m json.tool'

e() { emacs "$@" &> /dev/null & }

gmi() { curl -s "http://$(cat ${HOME}/ictf/ares/gm_pub_ip)/instances/$1" --header "Authorization\
: Bearer $(cat ${HOME}/ictf/ares/gm_token)" | python -m json.tool; }

gmend() { curl -s "http://$(cat ${HOME}/ictf/ares/gm_pub_ip)/gameend/terminate" --header "Authorization\
: Bearer $(cat ${HOME}/ictf/ares/gm_token)" | python -m json.tool; }

gmgo() { curl -s "http://$(cat ${HOME}/ictf/ares/gm_pub_ip)/gamecreate/start" --header "Authorization\
: Bearer $(cat ${HOME}/ictf/ares/gm_token)" --form "$(cat ${HOME}/ictf/ares/cfg-game-DEFAULT.yml)"; }


load() { ${HOME}/ictf/gm/vms_report.py -c; }

pp() { python - << EOF
from struct import pack
def p32(str):
  return pack('<I', str)
def p64(str):
  return pack('<Q', str)
print $@
EOF
}; 

alias emacs='emacsclient -t'
alias semacs='sudo /usr/bin/emacs -nw'
alias hopper='/opt/hopper-v4/bin/hopper-launcher.sh > /dev/null 2>&1'

alias sudo='sudo -s '

if [ -f /usr/bin/teamviewer ]; then
   alias tvup='teamviewer --daemon start start TeamViewer daemon'
   alias tvdown='teamviewer --daemon stop stop TeamViewer daemon'
fi


alias tre-work='tmux select-layout "58a2,309x81,0,0{155x81,0,0[155x38,0,0,228,155x42,0,39,231],153x81,156,0[153x27,156,0,232,153x29,156,28,233,153x23,156,58,234]}"'
alias tre-ictf='tmux select-layout "af04,288x74,0,0{113x74,0,0[113x43,0,0,169,113x30,0,44,172],174x74,114,0[174x25,114,0,173,174x25,114,26{90x25,114,26,174,83x25,205,26,235},174x22,114,52{90x22,114,52,175,83x22,205,52,236}]}"'
alias tre-hack='tmux select-layout "34c2,285x76,0,0{188x76,0,0{92x76,0,0,184,95x76,93,0[95x44,93,0,190,95x31,93,45,192]},96x76,189,0[96x22,189,0,186,96x28,189,23,187,96x24,189,52,188]}"'
