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

usage_output='sh: elfcopy: n'

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -h
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -I
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -K
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -L
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -N
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -O
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -R
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -S
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -V
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -W
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -X
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -d
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -j
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -p
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -w
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy -x
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --add-gnu-debuglink
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --add-section
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --adjust-warnings
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --change-section-lma
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --change-section-vma
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --extract-dwo
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --gap-fill
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --globalize-symbol
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --globalize-symbols
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --localize-hidden
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --localize-symbols
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --no-adjust-warnings
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --only-keep-debug
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --pad-to
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --prefix-alloc-sections
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --prefix-sections
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --prefix-symbols
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --rename-section
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --set-section-flags
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --set-start
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --srec-forceS3
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --srec-len
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --strip-dwo
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --strip-symbols=
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy --strip-unneeded
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that elfcopy(1) fails and generates a valid output when no arguments are supplied"
}

no_arguments_body()
{
	atf_check -s not-exit:0 -e inline:"sh: elfcopy: not found
" elfcopy
}

atf_init_test_cases()
{
	atf_add_test_case h_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
