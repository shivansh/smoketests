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
	atf_check -s exit:0 -o inline:"speed 38400 baud; 42 rows; 88 columns;
lflags: icanon isig iexten echo echoe echok echoke -echonl echoctl
	-echoprt -altwerase -noflsh -tostop -flusho -pendin -nokerninfo
	-extproc
iflags: -istrip icrnl -inlcr -igncr ixon -ixoff -ixany -imaxbel -ignbrk
	brkint -inpck -ignpar -parmrk
oflags: opost onlcr -ocrnl tab0 -onocr -onlret
cflags: cread cs8 -parenb -parodd hupcl -clocal -cstopb -crtscts -dsrflow
	-dtrflow -mdmbuf
cchars: discard = ^O; dsusp = ^Y; eof = ^D; eol = ^@; eol2 = ^@;
	erase = ^?; erase2 = ^H; intr = ^C; kill = ^U; lnext = ^V;
	min = 1; quit = ^\; reprint = ^R; start = ^Q; status = ^T;
	stop = ^S; susp = ^Z; time = 0; werase = ^W;
" stty -a
}

atf_test_case e_flag
e_flag_head()
{
	atf_set "descr" "Verify the usage of option 'e'"
}

e_flag_body()
{
	atf_check -s exit:0 -o inline:"speed 38400 baud; 42 rows; 88 columns;
lflags: icanon isig iexten echo echoe echok echoke -echonl echoctl
	-echoprt -altwerase -noflsh -tostop -flusho -pendin -nokerninfo
	-extproc
iflags: -istrip icrnl -inlcr -igncr ixon -ixoff -ixany -imaxbel -ignbrk
	brkint -inpck -ignpar -parmrk
oflags: opost onlcr -ocrnl tab0 -onocr -onlret
cflags: cread cs8 -parenb -parodd hupcl -clocal -cstopb -crtscts -dsrflow
	-dtrflow -mdmbuf
discard dsusp   eof     eol     eol2    erase   erase2  intr    kill    
^O      ^Y      ^D      ^@      ^@      ^?      ^H      ^C      ^U      
lnext   min     quit    reprint start   status  stop    susp    time    
^V      1       ^\      ^R      ^Q      ^T      ^S      ^Z      0       
werase  
^W      
" stty -e
}

atf_test_case f_flag
f_flag_head()
{
	atf_set "descr" "Verify the usage of option 'f'"
}

f_flag_body()
{
	atf_check -s exit:0 -o inline:"speed 38400 baud;
lflags: echoe echok echoke echoctl
iflags: -ixany -imaxbel
oflags: tab0
cflags: cs8 -parenb
eol     eol2    
^@      ^@      
" stty -f
}

atf_test_case g_flag
g_flag_head()
{
	atf_set "descr" "Verify the usage of option 'g'"
}

g_flag_body()
{
	atf_check -s exit:0 -o inline:"gfmt1:cflag=4b00:iflag=302:lflag=5cf:oflag=3:discard=f:dsusp=19:eof=4:eol=0:eol2=0:erase=7f:erase2=8:intr=3:kill=15:lnext=16:min=1:quit=1c:reprint=12:start=11:status=14:stop=13:susp=1a:time=0:werase=17:ispeed=38400:ospeed=38400
" stty -g
}

atf_test_case parity_flag
parity_flag_head()
{
	atf_set "descr" "Verify the usage of option 'parity'"
}

parity_flag_body()
{
	atf_check -s exit:0 -o empty stty -parity
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
	atf_set "descr" "Verify that stty(1) executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:"speed 38400 baud;
lflags: echoe echok echoke echoctl
iflags: -ixany -imaxbel
oflags: tab0
cflags: cs8 -parenb
eol     eol2    
^@      ^@      
" stty
}

atf_init_test_cases()
{
	atf_add_test_case a_flag
	atf_add_test_case e_flag
	atf_add_test_case f_flag
	atf_add_test_case g_flag
	atf_add_test_case parity_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
