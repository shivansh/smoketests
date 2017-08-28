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
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
  758 v0  Is+  0:00.00 /usr/libexec/getty Pc ttyv0
  759 v1  Is+  0:00.00 /usr/libexec/getty Pc ttyv1
  760 v2  Is+  0:00.00 /usr/libexec/getty Pc ttyv2
  761 v3  Is+  0:00.00 /usr/libexec/getty Pc ttyv3
  762 v4  Is+  0:00.00 /usr/libexec/getty Pc ttyv4
  763 v5  Is+  0:00.00 /usr/libexec/getty Pc ttyv5
  764 v6  Is+  0:00.00 /usr/libexec/getty Pc ttyv6
  765 v7  Is+  0:00.00 /usr/libexec/getty Pc ttyv7
 2873  0  Is+  0:00.45 -zsh (zsh)
60029  1  Ss   0:00.15 -zsh (zsh)
63752  1  S+   0:00.00 make run
63758  1  S+   0:00.04 ./generate_tests
63969  1  R+   0:00.00 ps -a
" ps -a
}

atf_test_case c_flag
c_flag_head()
{
	atf_set "descr" "Verify the usage of option 'c'"
}

c_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
 2873  0  Is+  0:00.45 zsh
60029  1  Ss   0:00.15 zsh
63752  1  S+   0:00.00 make
63758  1  S+   0:00.04 generate_tests
63970  1  R+   0:00.00 ps
" ps -c
}

atf_test_case C_flag
C_flag_head()
{
	atf_set "descr" "Verify the usage of option 'C'"
}

C_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
 2873  0  Is+  0:00.45 -zsh (zsh)
60029  1  Ss   0:00.15 -zsh (zsh)
63752  1  S+   0:00.00 make run
63758  1  S+   0:00.04 ./generate_tests
63971  1  R+   0:00.00 ps -C
" ps -C
}

atf_test_case d_flag
d_flag_head()
{
	atf_set "descr" "Verify the usage of option 'd'"
}

d_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
 2873  0  Is+  0:00.45 -zsh (zsh)
60029  1  Ss   0:00.15 -zsh (zsh)
63752  1  S+   0:00.00 - make run
63758  1  S+   0:00.04 `-- ./generate_tests
63972  1  R+   0:00.00   `-- ps -d
" ps -d
}

atf_test_case e_flag
e_flag_head()
{
	atf_set "descr" "Verify the usage of option 'e'"
}

e_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
 2873  0  Is+  0:00.45 USER=zeebsd LOGNAME=zeebsd HOME=/home/zeebsd MAIL=/var/mail/zeeb
60029  1  Ss   0:00.15 USER=zeebsd LOGNAME=zeebsd HOME=/home/zeebsd MAIL=/var/mail/zeeb
63752  1  S+   0:00.00 _=/usr/bin/make PWD=/usr/home/zeebsd/source-codes/smoketestsuite
63758  1  S+   0:00.04 MAKELEVEL=1 MAKEFLAGS= .MAKE.LEVEL.ENV=MAKELEVEL META_MODE=norma
63973  1  R+   0:00.00 SSH_CLIENT=10.0.2.2 44246 22 LOGNAME=zeebsd LESS=-R LC_CTYPE= LS
" ps -e
}

atf_test_case f_flag
f_flag_head()
{
	atf_set "descr" "Verify the usage of option 'f'"
}

f_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
 2873  0  Is+  0:00.45 -zsh (zsh)
60029  1  Ss   0:00.15 -zsh (zsh)
63752  1  S+   0:00.00 make run
63758  1  S+   0:00.04 ./generate_tests
63974  1  R+   0:00.00 ps -f
" ps -f
}

atf_test_case H_flag
H_flag_head()
{
	atf_set "descr" "Verify the usage of option 'H'"
}

H_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
 2873  0  Is+  0:00.45 -zsh (zsh)
60029  1  Ss   0:00.15 -zsh (zsh)
63752  1  S+   0:00.00 make run
63758  1  S+   0:00.00 ./generate_tests
63758  1  S+   0:00.01 ./generate_tests
63976  1  R+   0:00.00 ps -H
" ps -H
}

atf_test_case h_flag
h_flag_head()
{
	atf_set "descr" "Verify the usage of option 'h'"
}

h_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
 2873  0  Is+  0:00.45 -zsh (zsh)
60029  1  Ss   0:00.15 -zsh (zsh)
63752  1  S+   0:00.00 make run
63758  1  S+   0:00.04 ./generate_tests
63977  1  R+   0:00.00 ps -h
" ps -h
}

atf_test_case j_flag
j_flag_head()
{
	atf_set "descr" "Verify the usage of option 'j'"
}

j_flag_body()
{
	atf_check -s exit:0 -o inline:"USER     PID  PPID  PGID   SID JOBC STAT TT     TIME COMMAND
zeebsd  2873  2872  2873  2873    0 Is+   0  0:00.45 -zsh (zsh)
zeebsd 60029 60028 60029 60029    0 Ss    1  0:00.15 -zsh (zsh)
zeebsd 63752 60029 63752 60029    1 S+    1  0:00.00 make run
zeebsd 63758 63752 63752 60029    1 S+    1  0:00.04 ./generate_tests
zeebsd 63978 63758 63752 60029    1 R+    1  0:00.00 ps -j
" ps -j
}

atf_test_case L_flag
L_flag_head()
{
	atf_set "descr" "Verify the usage of option 'L'"
}

L_flag_body()
{
	atf_check -s exit:0 -o inline:"%cpu %mem acflag acflg args blocked caught class comm command cow cpu cputime dsiz
egid egroup emul etime etimes euid f f2 fib flags flags2 gid group ignored inblk
inblock jid jobc ktrace label lim lockname login logname lstart lwp majflt minflt
msgrcv msgsnd mwchan ni nice nivcsw nlwp nsignals nsigs nswap nvcsw nwchan oublk
oublock paddr pagein pcpu pending pgid pid pmem ppid pri re rgid rgroup rss rtprio ruid
ruser sid sig sigcatch sigignore sigmask sl ssiz start stat state svgid svuid systime
tdaddr tdev tdnam time tpgid tracer tsid tsiz tt tty ucomm uid upr uprocp user usertime
usrpri vsize vsz wchan xstat
" ps -L
}

atf_test_case l_flag
l_flag_head()
{
	atf_set "descr" "Verify the usage of option 'l'"
}

l_flag_body()
{
	atf_check -s exit:0 -o inline:" UID   PID  PPID CPU PRI NI   VSZ  RSS MWCHAN STAT TT     TIME COMMAND
1001  2873  2872   0  20  0 37728 8132 ttyin  Is+   0  0:00.45 -zsh (zsh)
1001 60029 60028   0  35  0 33336 6948 pause  Ss    1  0:00.15 -zsh (zsh)
1001 63752 60029   0  52  0  5000  988 wait   S+    1  0:00.00 make run
1001 63758 63752   0  52  0 24992 4508 uwait  S+    1  0:00.04 ./generate_tests
1001 63981 63758   0  72  0 21164 2696 -      R+    1  0:00.00 ps -l
" ps -l
}

atf_test_case m_flag
m_flag_head()
{
	atf_set "descr" "Verify the usage of option 'm'"
}

m_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
 2873  0  Is+  0:00.45 -zsh (zsh)
60029  1  Ss   0:00.15 -zsh (zsh)
63752  1  S+   0:00.00 make run
63758  1  S+   0:00.04 ./generate_tests
63983  1  R+   0:00.00 ps -m
" ps -m
}

atf_test_case r_flag
r_flag_head()
{
	atf_set "descr" "Verify the usage of option 'r'"
}

r_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
63758  1  S+   0:00.04 ./generate_tests
 2873  0  Is+  0:00.45 -zsh (zsh)
60029  1  Ss   0:00.15 -zsh (zsh)
63752  1  S+   0:00.00 make run
63988  1  R+   0:00.00 ps -r
" ps -r
}

atf_test_case S_flag
S_flag_head()
{
	atf_set "descr" "Verify the usage of option 'S'"
}

S_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
 2873  0  Is+  0:45.99 -zsh (zsh)
60029  1  Ss   0:06.83 -zsh (zsh)
63752  1  S+   0:00.01 make run
63758  1  S+   0:00.35 ./generate_tests
63989  1  R+   0:00.00 ps -S
" ps -S
}

atf_test_case T_flag
T_flag_head()
{
	atf_set "descr" "Verify the usage of option 'T'"
}

T_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
60029  1  Ss   0:00.15 -zsh (zsh)
63752  1  S+   0:00.00 make run
63758  1  S+   0:00.04 ./generate_tests
63990  1  R+   0:00.00 ps -T
" ps -T
}

atf_test_case u_flag
u_flag_head()
{
	atf_set "descr" "Verify the usage of option 'u'"
}

u_flag_body()
{
	atf_check -s exit:0 -o inline:"USER     PID %CPU %MEM   VSZ  RSS TT  STAT STARTED    TIME COMMAND
zeebsd 63758  0.1  0.4 24992 4512  1  S+   23:59   0:00.04 ./generate_tests
zeebsd  2873  0.0  0.8 37728 8132  0  Is+  23:39   0:00.45 -zsh (zsh)
zeebsd 60029  0.0  0.7 33336 6948  1  Ss   23:59   0:00.15 -zsh (zsh)
zeebsd 63752  0.0  0.1  5000  988  1  S+   23:59   0:00.00 make run
zeebsd 63993  0.0  0.3 21164 2696  1  R+   23:59   0:00.00 ps -u
" ps -u
}

atf_test_case v_flag
v_flag_head()
{
	atf_set "descr" "Verify the usage of option 'v'"
}

v_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID STAT    TIME  SL  RE PAGEIN   VSZ  RSS LIM TSIZ %CPU %MEM COMMAND
 2873 Is+  0:00.45  28 127      0 37728 8132   -  700  0.0  0.8 -zsh (zsh)
60029 Ss   0:00.15   1  24      0 33336 6948   -  700  0.0  0.7 -zsh (zsh)
63752 S+   0:00.00   1   1      0  5000  988   -  692  0.0  0.1 make run
63758 S+   0:00.04   0   1      0 24992 4512   -  272  0.1  0.4 ./generate_tests
63994 R+   0:00.00 127   0      0 21164 2696   -   32  0.0  0.3 ps -v
" ps -v
}

atf_test_case w_flag
w_flag_head()
{
	atf_set "descr" "Verify the usage of option 'w'"
}

w_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
 2873  0  Is+  0:00.45 -zsh (zsh)
60029  1  Ss   0:00.15 -zsh (zsh)
63752  1  S+   0:00.00 make run
63758  1  S+   0:00.04 ./generate_tests
63995  1  R+   0:00.00 ps -w
" ps -w
}

atf_test_case X_flag
X_flag_head()
{
	atf_set "descr" "Verify the usage of option 'X'"
}

X_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
 2873  0  Is+  0:00.45 -zsh (zsh)
60029  1  Ss   0:00.15 -zsh (zsh)
63752  1  S+   0:00.00 make run
63758  1  S+   0:00.04 ./generate_tests
63996  1  R+   0:00.00 ps -X
" ps -X
}

atf_test_case x_flag
x_flag_head()
{
	atf_set "descr" "Verify the usage of option 'x'"
}

x_flag_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
  797  -  Ss   0:00.11 gpg-agent --homedir /home/zeebsd/.gnupg --use-standard-socket --
 2872  -  I    0:01.32 sshd: zeebsd@pts/0 (sshd)
60021  -  Is   0:00.00 ssh-agent -s
60028  -  S    0:00.08 sshd: zeebsd@pts/1 (sshd)
 2873  0  Is+  0:00.45 -zsh (zsh)
60029  1  Ss   0:00.15 -zsh (zsh)
63752  1  S+   0:00.00 make run
63758  1  S+   0:00.04 ./generate_tests
63997  1  R+   0:00.00 ps -x
" ps -x
}

atf_test_case Z_flag
Z_flag_head()
{
	atf_set "descr" "Verify the usage of option 'Z'"
}

Z_flag_body()
{
	atf_check -s exit:0 -o inline:"LABEL   PID TT  STAT    TIME COMMAND
       2873  0  Is+  0:00.45 -zsh (zsh)
      60029  1  Ss   0:00.15 -zsh (zsh)
      63752  1  S+   0:00.00 make run
      63758  1  S+   0:00.04 ./generate_tests
      63998  1  R+   0:00.00 ps -Z
" ps -Z
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"ps: missing libxo option
" ps --libxo
	atf_check -s not-exit:0 -e inline:"ps: option requires an argument -- G
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
" ps -G
	atf_check -s not-exit:0 -e inline:"ps: option requires an argument -- J
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
" ps -J
	atf_check -s not-exit:0 -e inline:"ps: option requires an argument -- M
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
" ps -M
	atf_check -s not-exit:0 -e inline:"ps: option requires an argument -- N
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
" ps -N
	atf_check -s not-exit:0 -e inline:"ps: option requires an argument -- O
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
" ps -O
	atf_check -s not-exit:0 -e inline:"ps: option requires an argument -- o
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
" ps -o
	atf_check -s not-exit:0 -e inline:"ps: option requires an argument -- p
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
" ps -p
	atf_check -s not-exit:0 -e inline:"ps: option requires an argument -- t
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
" ps -t
	atf_check -s not-exit:0 -e inline:"ps: option requires an argument -- U
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
" ps -U
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that ps(1) executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:"  PID TT  STAT    TIME COMMAND
 2873  0  Is+  0:00.45 -zsh (zsh)
60029  1  Ss   0:00.15 -zsh (zsh)
63752  1  S+   0:00.00 make run
63758  1  S+   0:00.04 ./generate_tests
63999  1  R+   0:00.00 ps
" ps
}

atf_init_test_cases()
{
	atf_add_test_case a_flag
	atf_add_test_case c_flag
	atf_add_test_case C_flag
	atf_add_test_case d_flag
	atf_add_test_case e_flag
	atf_add_test_case f_flag
	atf_add_test_case H_flag
	atf_add_test_case h_flag
	atf_add_test_case j_flag
	atf_add_test_case L_flag
	atf_add_test_case l_flag
	atf_add_test_case m_flag
	atf_add_test_case r_flag
	atf_add_test_case S_flag
	atf_add_test_case T_flag
	atf_add_test_case u_flag
	atf_add_test_case v_flag
	atf_add_test_case w_flag
	atf_add_test_case X_flag
	atf_add_test_case x_flag
	atf_add_test_case Z_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
