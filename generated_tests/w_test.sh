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
	atf_check -s exit:0 -o inline:' 9:09PM  up  7:58, 3 users, load averages: 0.56, 0.37, 0.35
USER       TTY      FROM                                      LOGIN@  IDLE WHAT
		770       -zsh (zsh)
		98606     nvim genera
		98606     nvim genera
zeebsd     pts/0    10.0.2.2                                  1:16PM     3 nvim genera
		834       -zsh (zsh)
		11606     make run
		11608     ./generate_ (generate_test)
		12177     w -d
zeebsd     pts/1    10.0.2.2                                  1:29PM     - w -d
		1765      -zsh (zsh)
zeebsd     pts/2    10.0.2.2                                  1:54PM     - -zsh (zsh)
' w -d
}

atf_test_case h_flag
h_flag_head()
{
	atf_set "descr" "Verify the usage of option 'h'"
}

h_flag_body()
{
	atf_check -s exit:0 -o inline:'zeebsd     pts/0    10.0.2.2                                  1:16PM     3 nvim genera
zeebsd     pts/1    10.0.2.2                                  1:29PM     - w -h
zeebsd     pts/2    10.0.2.2                                  1:54PM     - -zsh (zsh)
' w -h
}

atf_test_case i_flag
i_flag_head()
{
	atf_set "descr" "Verify the usage of option 'i'"
}

i_flag_body()
{
	atf_check -s exit:0 -o inline:' 9:09PM  up  7:58, 3 users, load averages: 0.56, 0.37, 0.35
USER       TTY      FROM                                      LOGIN@  IDLE WHAT
zeebsd     pts/1    10.0.2.2                                  1:29PM     - w -i
zeebsd     pts/2    10.0.2.2                                  1:54PM     - -zsh (zsh)
zeebsd     pts/0    10.0.2.2                                  1:16PM     3 nvim genera
' w -i
}

atf_test_case n_flag
n_flag_head()
{
	atf_set "descr" "Verify the usage of option 'n'"
}

n_flag_body()
{
	atf_check -s exit:0 -o inline:' 9:09PM  up  7:58, 3 users, load averages: 0.56, 0.37, 0.35
USER       TTY      FROM                                      LOGIN@  IDLE WHAT
zeebsd     pts/0    10.0.2.2                                  1:16PM     3 nvim genera
zeebsd     pts/1    10.0.2.2                                  1:29PM     - w -n
zeebsd     pts/2    10.0.2.2                                  1:54PM     - -zsh (zsh)
' w -n
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s exit:1 -e inline:'w: option requires an argument -- M
usage: w [-dhin] [-M core] [-N system] [user ...]
' w -M
	atf_check -s exit:1 -e inline:'w: option requires an argument -- N
usage: w [-dhin] [-M core] [-N system] [user ...]
' w -N
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that w executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:' 9:09PM  up  7:58, 3 users, load averages: 0.56, 0.37, 0.35
USER       TTY      FROM                                      LOGIN@  IDLE WHAT
zeebsd     pts/0    10.0.2.2                                  1:16PM     3 nvim genera
zeebsd     pts/1    10.0.2.2                                  1:29PM     - w
zeebsd     pts/2    10.0.2.2                                  1:54PM     - -zsh (zsh)
' w
}

atf_init_test_cases()
{
	atf_add_test_case d_flag
	atf_add_test_case h_flag
	atf_add_test_case i_flag
	atf_add_test_case n_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
