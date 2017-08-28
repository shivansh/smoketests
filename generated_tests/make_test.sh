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

atf_test_case B_flag
B_flag_head()
{
	atf_set "descr" "Verify the usage of option 'B'"
}

B_flag_body()
{
	atf_check -s exit:0 -o inline:"`generate_tests' is up to date.
" make -B
}

atf_test_case e_flag
e_flag_head()
{
	atf_set "descr" "Verify the usage of option 'e'"
}

e_flag_body()
{
	atf_check -s exit:0 -o inline:"`generate_tests' is up to date.
" make -e
}

atf_test_case i_flag
i_flag_head()
{
	atf_set "descr" "Verify the usage of option 'i'"
}

i_flag_body()
{
	atf_check -s exit:0 -o inline:"`generate_tests' is up to date.
" make -i
}

atf_test_case k_flag
k_flag_head()
{
	atf_set "descr" "Verify the usage of option 'k'"
}

k_flag_body()
{
	atf_check -s exit:0 -o inline:"`generate_tests' is up to date.
" make -k
}

atf_test_case n_flag
n_flag_head()
{
	atf_set "descr" "Verify the usage of option 'n'"
}

n_flag_body()
{
	atf_check -s exit:0 -o inline:"`generate_tests' is up to date.
" make -n
}

atf_test_case N_flag
N_flag_head()
{
	atf_set "descr" "Verify the usage of option 'N'"
}

N_flag_body()
{
	atf_check -s exit:0 -o inline:"`generate_tests' is up to date.
" make -N
}

atf_test_case s_flag
s_flag_head()
{
	atf_set "descr" "Verify the usage of option 's'"
}

s_flag_body()
{
	atf_check -s exit:0 -o inline:"`generate_tests' is up to date.
" make -s
}

atf_test_case t_flag
t_flag_head()
{
	atf_set "descr" "Verify the usage of option 't'"
}

t_flag_body()
{
	atf_check -s exit:0 -o inline:"`generate_tests' is up to date.
" make -t
}

atf_test_case W_flag
W_flag_head()
{
	atf_set "descr" "Verify the usage of option 'W'"
}

W_flag_body()
{
	atf_check -s exit:0 -o inline:"`generate_tests' is up to date.
" make -W
}

atf_test_case w_flag
w_flag_head()
{
	atf_set "descr" "Verify the usage of option 'w'"
}

w_flag_body()
{
	atf_check -s exit:0 -o inline:"make[1]: Entering directory `/usr/home/zeebsd/source-codes/smoketestsuite/tool'
`generate_tests' is up to date.
make[1]: Leaving directory `/usr/home/zeebsd/source-codes/smoketestsuite/tool'
" make -w
}

atf_test_case X_flag
X_flag_head()
{
	atf_set "descr" "Verify the usage of option 'X'"
}

X_flag_body()
{
	atf_check -s exit:0 -o inline:"`generate_tests' is up to date.
" make -X
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"make[1]: option requires an argument -- C
usage: make [-BeikNnqrstWwX] 
            [-C directory] [-D variable] [-d flags] [-f makefile]
            [-I directory] [-J private] [-j max_jobs] [-m directory] [-T file]
            [-V variable] [variable=value] [target ...]
" make -C
	atf_check -s not-exit:0 -e inline:"make[1]: option requires an argument -- D
usage: make [-BeikNnqrstWwX] 
            [-C directory] [-D variable] [-d flags] [-f makefile]
            [-I directory] [-J private] [-j max_jobs] [-m directory] [-T file]
            [-V variable] [variable=value] [target ...]
" make -D
	atf_check -s not-exit:0 -e inline:"make[1]: option requires an argument -- d
usage: make [-BeikNnqrstWwX] 
            [-C directory] [-D variable] [-d flags] [-f makefile]
            [-I directory] [-J private] [-j max_jobs] [-m directory] [-T file]
            [-V variable] [variable=value] [target ...]
" make -d
	atf_check -s not-exit:0 -e inline:"make[1]: option requires an argument -- f
usage: make [-BeikNnqrstWwX] 
            [-C directory] [-D variable] [-d flags] [-f makefile]
            [-I directory] [-J private] [-j max_jobs] [-m directory] [-T file]
            [-V variable] [variable=value] [target ...]
" make -f
	atf_check -s not-exit:0 -e inline:"make[1]: option requires an argument -- I
usage: make [-BeikNnqrstWwX] 
            [-C directory] [-D variable] [-d flags] [-f makefile]
            [-I directory] [-J private] [-j max_jobs] [-m directory] [-T file]
            [-V variable] [variable=value] [target ...]
" make -I
	atf_check -s not-exit:0 -e inline:"make[1]: option requires an argument -- J
usage: make [-BeikNnqrstWwX] 
            [-C directory] [-D variable] [-d flags] [-f makefile]
            [-I directory] [-J private] [-j max_jobs] [-m directory] [-T file]
            [-V variable] [variable=value] [target ...]
" make -J
	atf_check -s not-exit:0 -e inline:"make[1]: option requires an argument -- j
usage: make [-BeikNnqrstWwX] 
            [-C directory] [-D variable] [-d flags] [-f makefile]
            [-I directory] [-J private] [-j max_jobs] [-m directory] [-T file]
            [-V variable] [variable=value] [target ...]
" make -j
	atf_check -s not-exit:0 -e inline:"make[1]: option requires an argument -- m
usage: make [-BeikNnqrstWwX] 
            [-C directory] [-D variable] [-d flags] [-f makefile]
            [-I directory] [-J private] [-j max_jobs] [-m directory] [-T file]
            [-V variable] [variable=value] [target ...]
" make -m
	atf_check -s not-exit:0 -e inline:"`generate_tests' is up to date.
" make -q
	atf_check -s not-exit:0 -e inline:"make[1]: don't know how to make utils.o.cpp. Stop

make[1]: stopped in /usr/home/zeebsd/source-codes/smoketestsuite/tool
" make -r
	atf_check -s not-exit:0 -e inline:"make[1]: option requires an argument -- T
usage: make [-BeikNnqrstWwX] 
            [-C directory] [-D variable] [-d flags] [-f makefile]
            [-I directory] [-J private] [-j max_jobs] [-m directory] [-T file]
            [-V variable] [variable=value] [target ...]
" make -T
	atf_check -s not-exit:0 -e inline:"make[1]: option requires an argument -- V
usage: make [-BeikNnqrstWwX] 
            [-C directory] [-D variable] [-d flags] [-f makefile]
            [-I directory] [-J private] [-j max_jobs] [-m directory] [-T file]
            [-V variable] [variable=value] [target ...]
" make -V
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that make(1) executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:"`generate_tests' is up to date.
" make
}

atf_init_test_cases()
{
	atf_add_test_case B_flag
	atf_add_test_case e_flag
	atf_add_test_case i_flag
	atf_add_test_case k_flag
	atf_add_test_case n_flag
	atf_add_test_case N_flag
	atf_add_test_case s_flag
	atf_add_test_case t_flag
	atf_add_test_case W_flag
	atf_add_test_case w_flag
	atf_add_test_case X_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
