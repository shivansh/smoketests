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

atf_test_case b_flag
b_flag_head()
{
	atf_set "descr" "Verify the usage of option 'b'"
}

b_flag_body()
{
	atf_check -s exit:0 -o empty test -b
}

atf_test_case c_flag
c_flag_head()
{
	atf_set "descr" "Verify the usage of option 'c'"
}

c_flag_body()
{
	atf_check -s exit:0 -o empty test -c
}

atf_test_case d_flag
d_flag_head()
{
	atf_set "descr" "Verify the usage of option 'd'"
}

d_flag_body()
{
	atf_check -s exit:0 -o empty test -d
}

atf_test_case e_flag
e_flag_head()
{
	atf_set "descr" "Verify the usage of option 'e'"
}

e_flag_body()
{
	atf_check -s exit:0 -o empty test -e
}

atf_test_case f_flag
f_flag_head()
{
	atf_set "descr" "Verify the usage of option 'f'"
}

f_flag_body()
{
	atf_check -s exit:0 -o empty test -f
}

atf_test_case g_flag
g_flag_head()
{
	atf_set "descr" "Verify the usage of option 'g'"
}

g_flag_body()
{
	atf_check -s exit:0 -o empty test -g
}

atf_test_case h_flag
h_flag_head()
{
	atf_set "descr" "Verify the usage of option 'h'"
}

h_flag_body()
{
	atf_check -s exit:0 -o empty test -h
}

atf_test_case k_flag
k_flag_head()
{
	atf_set "descr" "Verify the usage of option 'k'"
}

k_flag_body()
{
	atf_check -s exit:0 -o empty test -k
}

atf_test_case n_flag
n_flag_head()
{
	atf_set "descr" "Verify the usage of option 'n'"
}

n_flag_body()
{
	atf_check -s exit:0 -o empty test -n
}

atf_test_case p_flag
p_flag_head()
{
	atf_set "descr" "Verify the usage of option 'p'"
}

p_flag_body()
{
	atf_check -s exit:0 -o empty test -p
}

atf_test_case r_flag
r_flag_head()
{
	atf_set "descr" "Verify the usage of option 'r'"
}

r_flag_body()
{
	atf_check -s exit:0 -o empty test -r
}

atf_test_case s_flag
s_flag_head()
{
	atf_set "descr" "Verify the usage of option 's'"
}

s_flag_body()
{
	atf_check -s exit:0 -o empty test -s
}

atf_test_case t_flag
t_flag_head()
{
	atf_set "descr" "Verify the usage of option 't'"
}

t_flag_body()
{
	atf_check -s exit:0 -o empty test -t
}

atf_test_case u_flag
u_flag_head()
{
	atf_set "descr" "Verify the usage of option 'u'"
}

u_flag_body()
{
	atf_check -s exit:0 -o empty test -u
}

atf_test_case w_flag
w_flag_head()
{
	atf_set "descr" "Verify the usage of option 'w'"
}

w_flag_body()
{
	atf_check -s exit:0 -o empty test -w
}

atf_test_case x_flag
x_flag_head()
{
	atf_set "descr" "Verify the usage of option 'x'"
}

x_flag_body()
{
	atf_check -s exit:0 -o empty test -x
}

atf_test_case z_flag
z_flag_head()
{
	atf_set "descr" "Verify the usage of option 'z'"
}

z_flag_body()
{
	atf_check -s exit:0 -o empty test -z
}

atf_test_case L_flag
L_flag_head()
{
	atf_set "descr" "Verify the usage of option 'L'"
}

L_flag_body()
{
	atf_check -s exit:0 -o empty test -L
}

atf_test_case O_flag
O_flag_head()
{
	atf_set "descr" "Verify the usage of option 'O'"
}

O_flag_body()
{
	atf_check -s exit:0 -o empty test -O
}

atf_test_case G_flag
G_flag_head()
{
	atf_set "descr" "Verify the usage of option 'G'"
}

G_flag_body()
{
	atf_check -s exit:0 -o empty test -G
}

atf_test_case S_flag
S_flag_head()
{
	atf_set "descr" "Verify the usage of option 'S'"
}

S_flag_body()
{
	atf_check -s exit:0 -o empty test -S
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
	atf_set "descr" "Verify that test(1)fails silently when no arguments are supplied"
}

no_arguments_body()
{
	atf_check -s not-exit:0 -e empty test
}

atf_init_test_cases()
{
	atf_add_test_case b_flag
	atf_add_test_case c_flag
	atf_add_test_case d_flag
	atf_add_test_case e_flag
	atf_add_test_case f_flag
	atf_add_test_case g_flag
	atf_add_test_case h_flag
	atf_add_test_case k_flag
	atf_add_test_case n_flag
	atf_add_test_case p_flag
	atf_add_test_case r_flag
	atf_add_test_case s_flag
	atf_add_test_case t_flag
	atf_add_test_case u_flag
	atf_add_test_case w_flag
	atf_add_test_case x_flag
	atf_add_test_case z_flag
	atf_add_test_case L_flag
	atf_add_test_case O_flag
	atf_add_test_case G_flag
	atf_add_test_case S_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
