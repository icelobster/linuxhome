# set the PS1
PS1='[\u:\A \W \#]\$'
export PS1

# list the files by time from old to new
alias lt='ls -tr'

# find man with specific man pages source
alias mank='man -M ~/Documents/kernel_org_man '

# list all the files with long style and in human sence
alias ll='ls -ahl'

# set the path
#PATH="~/Software/ctags/bin:~/Software/cscope/bin:$PATH"
#export PATH
export PATH="~/scripts:/usr/local/bin:/usr/local/sbin:$PATH"

# 生成c++语言的tag
alias ctags_cpp='ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ '

alias ..='cd ..'

##
# Your previous /Users/dalongxia/.bash_profile file was backed up as /Users/dalongxia/.bash_profile.macports-saved_2015-02-02_at_22:32:08
##

# MacPorts Installer addition on 2015-02-02_at_22:32:08: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

source ~/.git-completion.bash

##
# Your previous /Users/dalongxia/.bash_profile file was backed up as /Users/dalongxia/.bash_profile.macports-saved_2015-11-08_at_16:18:25
##

# MacPorts Installer addition on 2015-11-08_at_16:18:25: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

