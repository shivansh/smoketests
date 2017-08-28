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

atf_test_case a_flag
a_flag_head()
{
	atf_set "descr" "Verify the usage of option 'a'"
}

a_flag_body()
{
	atf_check -s exit:0 -o inline:"FreeBSD zeebsd 11.0-RELEASE-p9 FreeBSD 11.0-RELEASE-p9 #0: Tue Apr 11 08:48:40 UTC 2017     root@amd64-builder.daemonology.net:/usr/obj/usr/src/sys/GENERIC  amd64
" uname -a
}

atf_test_case i_flag
i_flag_head()
{
	atf_set "descr" "Verify the usage of option 'i'"
}

i_flag_body()
{
	atf_check -s exit:0 -o inline:"GENERIC
" uname -i
}

atf_test_case K_flag
K_flag_head()
{
	atf_set "descr" "Verify the usage of option 'K'"
}

K_flag_body()
{
	atf_check -s exit:0 -o inline:"1100122
" uname -K
}

atf_test_case m_flag
m_flag_head()
{
	atf_set "descr" "Verify the usage of option 'm'"
}

m_flag_body()
{
	atf_check -s exit:0 -o inline:"amd64
" uname -m
}

atf_test_case n_flag
n_flag_head()
{
	atf_set "descr" "Verify the usage of option 'n'"
}

n_flag_body()
{
	atf_check -s exit:0 -o inline:"zeebsd
" uname -n
}

atf_test_case o_flag
o_flag_head()
{
	atf_set "descr" "Verify the usage of option 'o'"
}

o_flag_body()
{
	atf_check -s exit:0 -o inline:"FreeBSD
" uname -o
}

atf_test_case p_flag
p_flag_head()
{
	atf_set "descr" "Verify the usage of option 'p'"
}

p_flag_body()
{
	atf_check -s exit:0 -o inline:"amd64
" uname -p
}

atf_test_case r_flag
r_flag_head()
{
	atf_set "descr" "Verify the usage of option 'r'"
}

r_flag_body()
{
	atf_check -s exit:0 -o inline:"11.0-RELEASE-p9
" uname -r
}

atf_test_case s_flag
s_flag_head()
{
	atf_set "descr" "Verify the usage of option 's'"
}

s_flag_body()
{
	atf_check -s exit:0 -o inline:"FreeBSD
" uname -s
}

atf_test_case U_flag
U_flag_head()
{
	atf_set "descr" "Verify the usage of option 'U'"
}

U_flag_body()
{
	atf_check -s exit:0 -o inline:"1100122
" uname -U
}

atf_test_case v_flag
v_flag_head()
{
	atf_set "descr" "Verify the usage of option 'v'"
}

v_flag_body()
{
	atf_check -s exit:0 -o inline:"FreeBSD 11.0-RELEASE-p9 #0: Tue Apr 11 08:48:40 UTC 2017     root@amd64-builder.daemonology.net:/usr/obj/usr/src/sys/GENERIC 
" uname -v
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that uname(1) executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:"FreeBSD
" uname
}

atf_init_test_cases()
{
	atf_add_test_case a_flag
	atf_add_test_case i_flag
	atf_add_test_case K_flag
	atf_add_test_case m_flag
	atf_add_test_case n_flag
	atf_add_test_case o_flag
	atf_add_test_case p_flag
	atf_add_test_case r_flag
	atf_add_test_case s_flag
	atf_add_test_case U_flag
	atf_add_test_case v_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
