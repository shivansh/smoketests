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

usage_output='sh: man.options: n'

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -h
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -v
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -a
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -B
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -b
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -C
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -c
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -D
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -d
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -E
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -e
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -F
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -f
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -G
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -g
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -H
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -I
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -i
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -J
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -j
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -K
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -k
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -L
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -l
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -M
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -m
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -N
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -n
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -O
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -o
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -P
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -p
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -Q
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -q
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -R
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -r
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -S
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -s
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -T
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -t
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -U
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -u
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -V
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -W
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -w
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -X
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -y
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -Z
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -z
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -7
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -\&?
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -hp
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -12
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options -450
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that man.options(1) fails and generates a valid output when no arguments are supplied"
}

no_arguments_body()
{
	atf_check -s not-exit:0 -e inline:"sh: man.options: not found
" man.options
}

atf_init_test_cases()
{
	atf_add_test_case h_flag
	atf_add_test_case v_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
