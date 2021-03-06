# -------------------------------------------------------------------
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
#alias foobar='nocorrect foobar'

# -------------------------------------------------------------------
# Ruby stuff
# -------------------------------------------------------------------
alias ri='ri -Tf ansi' # Search Ruby documentation
alias rake="noglob rake" # necessary to make rake work inside of zsh
alias lpruby="enscript --color=1 -Eruby"
alias ruby2html="enscript --color=1 -C1 -w html -Eruby"
#alias be='bundle exec'
alias bx='bundle exec'
#alias gentags='ctags .'

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias bk='cd $OLDPWD'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
alias lh='ls -d .*' # show hidden files/directories only
alias lsd='ls -aFhlG'
alias l='ls -al'
alias la='ls -a'
alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls -GFhl' # Same as above, but in long listing format
#alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias du='du -kh'
alias dus='du -sckx * | sort -nr' #directories sorted by size
alias f='open -a Forklift'
alias fi='open -a Finder'
alias h='history'
alias filecount='find . -type f | wc -l' # number of files (not directories)

# zsh has a new help facility
unalias run-help
autoload run-help

#prettyprint some output
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

# -------------------------------------------------------------------
# Mac only
# -------------------------------------------------------------------
alias cbp='pbpaste | less'
#if [[ $IS_MAC -eq 1 ]]; then
#    alias ql='qlmanage -p 2>/dev/null' # OS X Quick Look
    alias oo='open .' # open current directory in OS X Finder
    alias today='calendar -A 0 -f /usr/share/calendar/calendar.mark | sort'
    alias smart='diskutil info disk0 | grep SMART' # display SMART status of hard drive
#    # Hall of the Mountain King
#    alias cello='say -v cellos "di di di di di di di di di di di di di di di di di di di di di di di di di di"'
#    # alias to show all Mac App store apps
#    alias apps='mdfind "kMDItemAppStoreHasReceipt=1"'
#    # refresh brew by upgrading all outdated casks
#    alias refreshbrew='brew outdated | while read cask; do brew upgrade $cask; done'
#    # rebuild Launch Services to remove duplicate entries on Open With menu
#    alias rebuildopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.fram ework/Support/lsregister -kill -r -domain local -domain system -domain user'
#fi

# -------------------------------------------------------------------
# database
# -------------------------------------------------------------------
alias psqlstart='/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile start'
alias psqlstop='/usr/local/pgsql/bin/pg_ctl stop'
alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
#alias mysql='mysql -u root'
#alias mysqladmin='mysqladmin -u root'

# -------------------------------------------------------------------
# ome devvm start, stop, ssh, and mount
# -------------------------------------------------------------------
#alias 'startvm=VBoxHeadless --startvm devvm'
#alias 'stopvm=VBoxManage controlvm devvm poweroff'
#alias 'devvm=ssh -p 10022 ome@localhost'
#alias 'devmount=mount_smbfs //ome:ch1cag0@localhost:10139/ome /Users/$USERNAME/Projects/devvm/'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias ga='git add'
alias gp='git push'
alias gl='git log'
#alias gpl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
#alias gv='git log --pretty=format:'%s' | cut -d " " -f 1 | sort | uniq -c | sort -nr'

# leverage aliases from ~/.gitconfig
alias gh='git hist'
alias gt='git today'

# curiosities
# gsh shows the number of commits for the current repos for all developers
#alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
#alias gu="git shortlog | grep -E '^[^ ]'"

# Force tmux to use 256 colors
alias tmux='TERM=screen-256color-bce tmux'

# alias to cat this file to display
alias acat='< ~/.zsh/aliases.zsh'
alias fcat='< ~/.zsh/functions.zsh'
alias sz='source ~/.zshrc'
