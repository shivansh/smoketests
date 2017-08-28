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

usage_output='usage: killall'

atf_test_case l_flag
l_flag_head()
{
	atf_set "descr" "Verify the usage of option 'l'"
}

l_flag_body()
{
	atf_check -s exit:0 -o inline:"HUP INT QUIT ILL TRAP ABRT EMT FPE KILL BUS SEGV SYS PIPE ALRM TERM URG STOP 
TSTP CONT CHLD TTIN TTOU IO XCPU XFSZ VTALRM PROF WINCH INFO USR1 USR2 
" killall -l
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e match:"$usage_output" killall -d
	atf_check -s not-exit:0 -e match:"$usage_output" killall -e
	atf_check -s not-exit:0 -e match:"$usage_output" killall -help
	atf_check -s not-exit:0 -e match:"$usage_output" killall -I
	atf_check -s not-exit:0 -e match:"$usage_output" killall -m
	atf_check -s not-exit:0 -e match:"$usage_output" killall -s
	atf_check -s not-exit:0 -e inline:"killall: unknown signal Ar; valid signals:
HUP INT QUIT ILL TRAP ABRT EMT FPE KILL BUS SEGV SYS PIPE ALRM TERM URG STOP 
TSTP CONT CHLD TTIN TTOU IO XCPU XFSZ VTALRM PROF WINCH INFO USR1 USR2 
" killall -Ar
	atf_check -s not-exit:0 -e inline:"killall: must specify jail
" killall -j
	atf_check -s not-exit:0 -e inline:"killall: must specify user
" killall -u
	atf_check -s not-exit:0 -e inline:"killall: must specify tty
" killall -t
	atf_check -s not-exit:0 -e inline:"killall: must specify procname
" killall -c
	atf_check -s not-exit:0 -e match:"$usage_output" killall -q
	atf_check -s not-exit:0 -e match:"$usage_output" killall -z
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that killall(1) fails and generates a valid usage message when no arguments are supplied"
}

no_arguments_body()
{
	atf_check -s not-exit:0 -e match:"$usage_output" killall
}

atf_init_test_cases()
{
	atf_add_test_case l_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
