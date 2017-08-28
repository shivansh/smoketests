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

usage_output='usage: procstat'

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"procstat: missing libxo option
usage: procstat [-CHhn] [-M core] [-N system] [-w interval]
                [-b | -c | -e | -f | -i | -j | -k | -l | -r | -s | -S | -t | -v | -x]
                [-a | pid | core ...]
" procstat --libxo
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -b
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -c
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -e
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -f
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -i
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -j
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -k
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -l
	atf_check -s not-exit:0 -e inline:"procstat: illegal option -- L
usage: procstat [-CHhn] [-M core] [-N system] [-w interval]
                [-b | -c | -e | -f | -i | -j | -k | -l | -r | -s | -S | -t | -v | -x]
                [-a | pid | core ...]
" procstat -L
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -r
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -s
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -S
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -t
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -v
	atf_check -s not-exit:0 -e match:"$usage_output" procstat -x
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that procstat(1) fails and generates a valid usage message when no arguments are supplied"
}

no_arguments_body()
{
	atf_check -s not-exit:0 -e match:"$usage_output" procstat
}

atf_init_test_cases()
{
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
