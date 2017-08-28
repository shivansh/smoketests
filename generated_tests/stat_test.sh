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

atf_test_case F_flag
F_flag_head()
{
	atf_set "descr" "Verify the usage of option 'F'"
}

F_flag_body()
{
	atf_check -s exit:0 -o inline:"crw--w---- 1 zeebsd tty 0,84 Aug 29 23:59:56 2017 /dev/pts/1
" stat -F
}

atf_test_case H_flag
H_flag_head()
{
	atf_set "descr" "Verify the usage of option 'H'"
}

H_flag_body()
{
	atf_check -s exit:0 -o inline:"1895890688 84 crw--w---- 1 zeebsd tty 84 0 "Aug 29 23:59:53 2017" "Aug 29 23:59:56 2017" "Aug 29 23:59:56 2017" "Jan  1 05:29:59 1970" 4096 0 0 /dev/pts/1
" stat -H
}

atf_test_case L_flag
L_flag_head()
{
	atf_set "descr" "Verify the usage of option 'L'"
}

L_flag_body()
{
	atf_check -s exit:0 -o inline:"1895890688 84 crw--w---- 1 zeebsd tty 84 0 "Aug 29 23:59:53 2017" "Aug 29 23:59:56 2017" "Aug 29 23:59:56 2017" "Jan  1 05:29:59 1970" 4096 0 0 /dev/pts/1
" stat -L
}

atf_test_case n_flag
n_flag_head()
{
	atf_set "descr" "Verify the usage of option 'n'"
}

n_flag_body()
{
	atf_check -s exit:0 -o inline:"1895890688 84 crw--w---- 1 zeebsd tty 84 0 "Aug 29 23:59:53 2017" "Aug 29 23:59:56 2017" "Aug 29 23:59:56 2017" "Jan  1 05:29:59 1970" 4096 0 0 /dev/pts/1" stat -n
}

atf_test_case q_flag
q_flag_head()
{
	atf_set "descr" "Verify the usage of option 'q'"
}

q_flag_body()
{
	atf_check -s exit:0 -o inline:"1895890688 84 crw--w---- 1 zeebsd tty 84 0 "Aug 29 23:59:53 2017" "Aug 29 23:59:56 2017" "Aug 29 23:59:56 2017" "Jan  1 05:29:59 1970" 4096 0 0 /dev/pts/1
" stat -q
}

atf_test_case l_flag
l_flag_head()
{
	atf_set "descr" "Verify the usage of option 'l'"
}

l_flag_body()
{
	atf_check -s exit:0 -o inline:"crw--w---- 1 zeebsd tty 0,84 Aug 29 23:59:56 2017 /dev/pts/1
" stat -l
}

atf_test_case r_flag
r_flag_head()
{
	atf_set "descr" "Verify the usage of option 'r'"
}

r_flag_body()
{
	atf_check -s exit:0 -o inline:"1895890688 84 020620 1 1001 4 84 0 1504031393 1504031396 1504031396 -1 4096 0 0 /dev/pts/1
" stat -r
}

atf_test_case s_flag
s_flag_head()
{
	atf_set "descr" "Verify the usage of option 's'"
}

s_flag_body()
{
	atf_check -s exit:0 -o inline:"st_dev=1895890688 st_ino=84 st_mode=020620 st_nlink=1 st_uid=1001 st_gid=4 st_rdev=84 st_size=0 st_atime=1504031393 st_mtime=1504031396 st_ctime=1504031396 st_birthtime=-1 st_blksize=4096 st_blocks=0 st_flags=0
" stat -s
}

atf_test_case x_flag
x_flag_head()
{
	atf_set "descr" "Verify the usage of option 'x'"
}

x_flag_body()
{
	atf_check -s exit:0 -o inline:"  File: "/dev/pts/1"
  Size: 0            FileType: Character Device
  Mode: (0620/crw--w----)         Uid: ( 1001/  zeebsd)  Gid: (    4/     tty)
Device: 255,1895825408   Inode: 84    Links: 1
Access: Tue Aug 29 23:59:53 2017
Modify: Tue Aug 29 23:59:56 2017
Change: Tue Aug 29 23:59:56 2017
" stat -x
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"stat: option requires an argument -- f
usage: stat [-FLnq] [-f format | -l | -r | -s | -x] [-t timefmt] [file|handle ...]
" stat -f
	atf_check -s not-exit:0 -e inline:"stat: option requires an argument -- t
usage: stat [-FLnq] [-f format | -l | -r | -s | -x] [-t timefmt] [file|handle ...]
" stat -t
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that stat(1) executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:"1895890688 84 crw--w---- 1 zeebsd tty 84 0 "Aug 29 23:59:53 2017" "Aug 29 23:59:56 2017" "Aug 29 23:59:56 2017" "Jan  1 05:29:59 1970" 4096 0 0 /dev/pts/1
" stat
}

atf_init_test_cases()
{
	atf_add_test_case F_flag
	atf_add_test_case H_flag
	atf_add_test_case L_flag
	atf_add_test_case n_flag
	atf_add_test_case q_flag
	atf_add_test_case l_flag
	atf_add_test_case r_flag
	atf_add_test_case s_flag
	atf_add_test_case x_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
