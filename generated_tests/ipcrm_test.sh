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

atf_test_case v_flag
v_flag_head()
{
	atf_set "descr" "Verify the usage of option 'v'"
}

v_flag_body()
{
	atf_check -s exit:0 -o empty ipcrm -v
}

atf_test_case W_flag
W_flag_head()
{
	atf_set "descr" "Verify the usage of option 'W'"
}

W_flag_body()
{
	atf_check -s exit:0 -o empty ipcrm -W
}

atf_test_case y_flag
y_flag_head()
{
	atf_set "descr" "Verify the usage of option 'y'"
}

y_flag_body()
{
	atf_check -s exit:0 -o empty ipcrm -y
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"ipcrm: option requires an argument -- q
ipcrm: option requires an argument -- q
unrecognized option: -q
usage: ipcrm [-W] [-v[v]]
             [-q msqid] [-m shmid] [-s semid]
             [-Q msgkey] [-M shmkey] [-S semkey] ...
" ipcrm -q
	atf_check -s not-exit:0 -e inline:"ipcrm: option requires an argument -- m
ipcrm: option requires an argument -- m
unrecognized option: -m
usage: ipcrm [-W] [-v[v]]
             [-q msqid] [-m shmid] [-s semid]
             [-Q msgkey] [-M shmkey] [-S semkey] ...
" ipcrm -m
	atf_check -s not-exit:0 -e inline:"ipcrm: option requires an argument -- s
ipcrm: option requires an argument -- s
unrecognized option: -s
usage: ipcrm [-W] [-v[v]]
             [-q msqid] [-m shmid] [-s semid]
             [-Q msgkey] [-M shmkey] [-S semkey] ...
" ipcrm -s
	atf_check -s not-exit:0 -e inline:"ipcrm: option requires an argument -- Q
ipcrm: option requires an argument -- Q
unrecognized option: -Q
usage: ipcrm [-W] [-v[v]]
             [-q msqid] [-m shmid] [-s semid]
             [-Q msgkey] [-M shmkey] [-S semkey] ...
" ipcrm -Q
	atf_check -s not-exit:0 -e inline:"ipcrm: option requires an argument -- M
ipcrm: option requires an argument -- M
unrecognized option: -M
usage: ipcrm [-W] [-v[v]]
             [-q msqid] [-m shmid] [-s semid]
             [-Q msgkey] [-M shmkey] [-S semkey] ...
" ipcrm -M
	atf_check -s not-exit:0 -e inline:"ipcrm: option requires an argument -- S
ipcrm: option requires an argument -- S
unrecognized option: -S
usage: ipcrm [-W] [-v[v]]
             [-q msqid] [-m shmid] [-s semid]
             [-Q msgkey] [-M shmkey] [-S semkey] ...
" ipcrm -S
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that ipcrm(1) executes successfully and silently when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o empty ipcrm
}

atf_init_test_cases()
{
	atf_add_test_case v_flag
	atf_add_test_case W_flag
	atf_add_test_case y_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
