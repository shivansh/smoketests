#
# Copyright 2017 Shivansh Rai
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.
#
# $FreeBSD$
#

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that printenv(1) executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:"SSH_CLIENT=10.0.2.2 44246 22
LOGNAME=zeebsd
LESS=-R
LC_CTYPE=
LSCOLORS=Gxfxcxdxbxegedabagacad
PAGER=less
MAKELEVEL=1
MAIL=/var/mail/zeebsd
META_MODE=normal
MAKEFLAGS= .MAKE.LEVEL.ENV=MAKELEVEL
PATH=/home/zeebsd/arc/arcanist/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/zeebsd/my-config-files/scripts://home/zeebsd/software-downloads/arcanist/bin:/home/zeebsd/.fzf/bin
EDITOR=nvim
SSH_KEY_PATH=~/.ssh/id_rsa.pub
ZSH=/home/zeebsd/.oh-my-zsh
OLDPWD=/home/zeebsd
SSH_AUTH_SOCK=/tmp/ssh-jArCznbJo6n9/agent.60019
.MAKE.LEVEL.ENV=MAKELEVEL
PWD=/usr/home/zeebsd/source-codes/smoketestsuite/tool
_=/usr/bin/make
TERM=xterm-256color
SSH_TTY=/dev/pts/1
VISUAL=nvim
HOME=/home/zeebsd
USER=zeebsd
AUTOJUMP_DATA_DIR=/home/zeebsd/.local/share/autojump
SSH_CONNECTION=10.0.2.2 44246 10.0.2.15 22
SHELL=/usr/local/bin/zsh
SSH_AGENT_PID=60021
BLOCKSIZE=K
SHLVL=1
GPG_TTY=/dev/pts/1
" printenv
}

atf_init_test_cases()
{
	atf_add_test_case no_arguments
}
