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

atf_test_case d_flag
d_flag_head()
{
	atf_set "descr" "Verify the usage of option 'd'"
}

d_flag_body()
{
	atf_check -s exit:0 -o inline:"awk version 20121220 (FreeBSD)
" awk -d
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"awk: field separator FS is empty

awk: no program given

" awk -F
	atf_check -s not-exit:0 -e inline:"awk: no program filename

" awk -f
	atf_check -s not-exit:0 -e inline:"awk: no program given

" awk -safe
	atf_check -s not-exit:0 -e inline:"awk: unknown option -V ignored

awk: no program given

" awk -V
	atf_check -s not-exit:0 -e inline:"awk: no variable name

" awk -v
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that awk(1) fails and generates a valid usage message when no arguments are supplied"
}

no_arguments_body()
{
	atf_check -s not-exit:0 -e match:"$usage_output" awk
}

atf_init_test_cases()
{
	atf_add_test_case d_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
