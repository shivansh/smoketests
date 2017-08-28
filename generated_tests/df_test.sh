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
	atf_check -s exit:0 -o inline:"Filesystem   1K-blocks     Used   Avail Capacity  Mounted on
/dev/ada0s1a  30450780 23990532 4024188    86%    /
devfs                1        1       0   100%    /dev
" df -a
}

atf_test_case b_flag
b_flag_head()
{
	atf_set "descr" "Verify the usage of option 'b'"
}

b_flag_body()
{
	atf_check -s exit:0 -o inline:"Filesystem   512-blocks     Used   Avail Capacity  Mounted on
/dev/ada0s1a   60901560 47981064 8048376    86%    /
devfs                 2        2       0   100%    /dev
" df -b
}

atf_test_case c_flag
c_flag_head()
{
	atf_set "descr" "Verify the usage of option 'c'"
}

c_flag_body()
{
	atf_check -s exit:0 -o inline:"Filesystem   1K-blocks     Used   Avail Capacity  Mounted on
/dev/ada0s1a  30450780 23990532 4024188    86%    /
devfs                1        1       0   100%    /dev
total         30450781 23990533 4024188    86%  
" df -c
}

atf_test_case g_flag
g_flag_head()
{
	atf_set "descr" "Verify the usage of option 'g'"
}

g_flag_body()
{
	atf_check -s exit:0 -o inline:"Filesystem   1G-blocks Used Avail Capacity  Mounted on
/dev/ada0s1a        29   22     3    86%    /
devfs                0    0     0   100%    /dev
" df -g
}

atf_test_case h_flag
h_flag_head()
{
	atf_set "descr" "Verify the usage of option 'h'"
}

h_flag_body()
{
	atf_check -s exit:0 -o inline:"Filesystem      Size    Used   Avail Capacity  Mounted on
/dev/ada0s1a     29G     23G    3.8G    86%    /
devfs           1.0K    1.0K      0B   100%    /dev
" df -h
}

atf_test_case H_flag
H_flag_head()
{
	atf_set "descr" "Verify the usage of option 'H'"
}

H_flag_body()
{
	atf_check -s exit:0 -o inline:"Filesystem      Size    Used   Avail Capacity  Mounted on
/dev/ada0s1a     31G     25G    4.1G    86%    /
devfs           1.0k    1.0k      0B   100%    /dev
" df -H
}

atf_test_case i_flag
i_flag_head()
{
	atf_set "descr" "Verify the usage of option 'i'"
}

i_flag_body()
{
	atf_check -s exit:0 -o inline:"Filesystem   1K-blocks     Used   Avail Capacity iused   ifree %iused  Mounted on
/dev/ada0s1a  30450780 23990532 4024188    86%  880273 3132525   22%   /
devfs                1        1       0   100%       0       0  100%   /dev
" df -i
}

atf_test_case k_flag
k_flag_head()
{
	atf_set "descr" "Verify the usage of option 'k'"
}

k_flag_body()
{
	atf_check -s exit:0 -o inline:"Filesystem   1024-blocks     Used   Avail Capacity  Mounted on
/dev/ada0s1a    30450780 23990532 4024188    86%    /
devfs                  1        1       0   100%    /dev
" df -k
}

atf_test_case l_flag
l_flag_head()
{
	atf_set "descr" "Verify the usage of option 'l'"
}

l_flag_body()
{
	atf_check -s exit:0 -o inline:"Filesystem   1K-blocks     Used   Avail Capacity  Mounted on
/dev/ada0s1a  30450780 23990532 4024188    86%    /
devfs                1        1       0   100%    /dev
" df -l
}

atf_test_case m_flag
m_flag_head()
{
	atf_set "descr" "Verify the usage of option 'm'"
}

m_flag_body()
{
	atf_check -s exit:0 -o inline:"Filesystem   1M-blocks  Used Avail Capacity  Mounted on
/dev/ada0s1a     29737 23428  3929    86%    /
devfs                0     0     0   100%    /dev
" df -m
}

atf_test_case n_flag
n_flag_head()
{
	atf_set "descr" "Verify the usage of option 'n'"
}

n_flag_body()
{
	atf_check -s exit:0 -o inline:"Filesystem   1K-blocks     Used   Avail Capacity  Mounted on
/dev/ada0s1a  30450780 23990532 4024188    86%    /
devfs                1        1       0   100%    /dev
" df -n
}

atf_test_case P_flag
P_flag_head()
{
	atf_set "descr" "Verify the usage of option 'P'"
}

P_flag_body()
{
	atf_check -s exit:0 -o inline:"Filesystem   512-blocks     Used   Avail Capacity  Mounted on
/dev/ada0s1a   60901560 47981064 8048376    86%    /
devfs                 2        2       0   100%    /dev
" df -P
}

atf_test_case T_flag
T_flag_head()
{
	atf_set "descr" "Verify the usage of option 'T'"
}

T_flag_body()
{
	atf_check -s exit:0 -o inline:"Filesystem    Type  1K-blocks     Used   Avail Capacity  Mounted on
/dev/ada0s1a  ufs    30450780 23990532 4024188    86%    /
devfs         devfs         1        1       0   100%    /dev
" df -T
}

atf_test_case ,_flag
,_flag_head()
{
	atf_set "descr" "Verify the usage of option ','"
}

,_flag_body()
{
	atf_check -s exit:0 -o inline:"Filesystem    1K-blocks       Used     Avail Capacity  Mounted on
/dev/ada0s1a   30450780   23990532   4024188    86%    /
devfs                 1          1         0   100%    /dev
" df -,
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"df: missing libxo option
" df --libxo
	atf_check -s not-exit:0 -e inline:"df: option requires an argument -- t
usage: df [-b | -g | -H | -h | -k | -m | -P] [-acilnT] [-t type] [-,]
          [file | filesystem ...]
" df -t
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that df(1) executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:"Filesystem   1K-blocks     Used   Avail Capacity  Mounted on
/dev/ada0s1a  30450780 23990532 4024188    86%    /
devfs                1        1       0   100%    /dev
" df
}

atf_init_test_cases()
{
	atf_add_test_case a_flag
	atf_add_test_case b_flag
	atf_add_test_case c_flag
	atf_add_test_case g_flag
	atf_add_test_case h_flag
	atf_add_test_case H_flag
	atf_add_test_case i_flag
	atf_add_test_case k_flag
	atf_add_test_case l_flag
	atf_add_test_case m_flag
	atf_add_test_case n_flag
	atf_add_test_case P_flag
	atf_add_test_case T_flag
	atf_add_test_case ,_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
