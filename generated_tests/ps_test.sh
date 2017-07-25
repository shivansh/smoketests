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
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  754 v0  Is+  0:00.00 /usr/libexec/getty Pc ttyv0
  755 v1  Is+  0:00.00 /usr/libexec/getty Pc ttyv1
  756 v2  Is+  0:00.00 /usr/libexec/getty Pc ttyv2
  757 v3  Is+  0:00.00 /usr/libexec/getty Pc ttyv3
  758 v4  Is+  0:00.00 /usr/libexec/getty Pc ttyv4
  759 v5  Is+  0:00.00 /usr/libexec/getty Pc ttyv5
  760 v6  Is+  0:00.00 /usr/libexec/getty Pc ttyv6
  761 v7  Is+  0:00.00 /usr/libexec/getty Pc ttyv7
  770  0  Is   0:01.27 -zsh (zsh)
98606  0  I+   2:15.89 nvim generate_test.cpp
  834  1  Ss   0:06.83 -zsh (zsh)
11606  1  S+   0:00.00 make run
11608  1  S+   0:00.03 ./generate_test
11842  1  R+   0:00.00 ps -a
 1765  2  Ss+  0:02.53 -zsh (zsh)
' ps -a
}

atf_test_case c_flag
c_flag_head()
{
	atf_set "descr" "Verify the usage of option 'c'"
}

c_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  770  0  Is   0:01.27 zsh
98606  0  I+   2:15.89 nvim
  834  1  Ss   0:06.83 zsh
11606  1  S+   0:00.00 make
11608  1  S+   0:00.03 generate_test
11843  1  R+   0:00.00 ps
 1765  2  Ss+  0:02.53 zsh
' ps -c
}

atf_test_case C_flag
C_flag_head()
{
	atf_set "descr" "Verify the usage of option 'C'"
}

C_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  770  0  Is   0:01.27 -zsh (zsh)
98606  0  I+   2:15.89 nvim generate_test.cpp
  834  1  Ss   0:06.83 -zsh (zsh)
11606  1  S+   0:00.00 make run
11608  1  S+   0:00.03 ./generate_test
11844  1  R+   0:00.00 ps -C
 1765  2  Ss+  0:02.53 -zsh (zsh)
' ps -C
}

atf_test_case d_flag
d_flag_head()
{
	atf_set "descr" "Verify the usage of option 'd'"
}

d_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  770  0  Is   0:01.27 -zsh (zsh)
98606  0  I+   2:15.89 - nvim generate_test.cpp
  834  1  Ss   0:06.83 -zsh (zsh)
11606  1  S+   0:00.00 - make run
11608  1  S+   0:00.03 `-- ./generate_test
11845  1  R+   0:00.00   `-- ps -d
 1765  2  Ss+  0:02.53 -zsh (zsh)
' ps -d
}

atf_test_case e_flag
e_flag_head()
{
	atf_set "descr" "Verify the usage of option 'e'"
}

e_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  770  0  Is   0:01.27 USER=zeebsd LOGNAME=zeebsd HOME=/home/zeebsd MAIL=/var/mail/zeeb
98606  0  I+   2:15.89 _=/usr/local/bin/nvim OLDPWD=/usr/home/zeebsd/source-codes/smoke
  834  1  Ss   0:06.83 USER=zeebsd LOGNAME=zeebsd HOME=/home/zeebsd MAIL=/var/mail/zeeb
11606  1  S+   0:00.00 _=/usr/bin/make OLDPWD=/usr/home/zeebsd/source-codes/smoketestsu
11608  1  S+   0:00.03 MAKELEVEL=1 MAKEFLAGS= .MAKE.LEVEL.ENV=MAKELEVEL META_MODE=norma
11846  1  R+   0:00.00 SSH_CLIENT=10.0.2.2 52120 22 LOGNAME=zeebsd LESS=-R LC_CTYPE= LS
 1765  2  Ss+  0:02.53 USER=zeebsd LOGNAME=zeebsd HOME=/home/zeebsd MAIL=/var/mail/zeeb
' ps -e
}

atf_test_case f_flag
f_flag_head()
{
	atf_set "descr" "Verify the usage of option 'f'"
}

f_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  770  0  Is   0:01.27 -zsh (zsh)
98606  0  I+   2:15.89 nvim generate_test.cpp
  834  1  Ss   0:06.83 -zsh (zsh)
11606  1  S+   0:00.00 make run
11608  1  S+   0:00.03 ./generate_test
11847  1  R+   0:00.00 ps -f
 1765  2  Ss+  0:02.53 -zsh (zsh)
' ps -f
}

atf_test_case H_flag
H_flag_head()
{
	atf_set "descr" "Verify the usage of option 'H'"
}

H_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  770  0  Is   0:01.27 -zsh (zsh)
98606  0  I+   2:08.88 nvim generate_test.cpp
98606  0  I+   0:07.00 nvim generate_test.cpp
  834  1  Ss   0:06.83 -zsh (zsh)
11606  1  S+   0:00.00 make run
11608  1  S+   0:00.03 ./generate_test
11849  1  R+   0:00.00 ps -H
 1765  2  Ss+  0:02.53 -zsh (zsh)
' ps -H
}

atf_test_case h_flag
h_flag_head()
{
	atf_set "descr" "Verify the usage of option 'h'"
}

h_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  770  0  Is   0:01.27 -zsh (zsh)
98606  0  I+   2:15.89 nvim generate_test.cpp
  834  1  Ss   0:06.83 -zsh (zsh)
11606  1  S+   0:00.00 make run
11608  1  S+   0:00.03 ./generate_test
11850  1  R+   0:00.00 ps -h
 1765  2  Ss+  0:02.53 -zsh (zsh)
' ps -h
}

atf_test_case j_flag
j_flag_head()
{
	atf_set "descr" "Verify the usage of option 'j'"
}

j_flag_body()
{
	atf_check -s exit:0 -o inline:'USER     PID  PPID  PGID  SID JOBC STAT TT     TIME COMMAND
zeebsd   770   769   770  770    0 Is    0  0:01.27 -zsh (zsh)
zeebsd 98606   770 98606  770    1 I+    0  2:15.89 nvim generate_test.cpp
zeebsd   834   833   834  834    0 Ss    1  0:06.83 -zsh (zsh)
zeebsd 11606   834 11606  834    1 S+    1  0:00.00 make run
zeebsd 11608 11606 11606  834    1 S+    1  0:00.03 ./generate_test
zeebsd 11851 11608 11606  834    1 R+    1  0:00.00 ps -j
zeebsd  1765  1764  1765 1765    0 Ss+   2  0:02.53 -zsh (zsh)
' ps -j
}

atf_test_case L_flag
L_flag_head()
{
	atf_set "descr" "Verify the usage of option 'L'"
}

L_flag_body()
{
	atf_check -s exit:0 -o inline:'%cpu %mem acflag acflg args blocked caught class comm command cow cpu cputime dsiz
egid egroup emul etime etimes euid f f2 fib flags flags2 gid group ignored inblk
inblock jid jobc ktrace label lim lockname login logname lstart lwp majflt minflt
msgrcv msgsnd mwchan ni nice nivcsw nlwp nsignals nsigs nswap nvcsw nwchan oublk
oublock paddr pagein pcpu pending pgid pid pmem ppid pri re rgid rgroup rss rtprio ruid
ruser sid sig sigcatch sigignore sigmask sl ssiz start stat state svgid svuid systime
tdaddr tdev tdnam time tpgid tracer tsid tsiz tt tty ucomm uid upr uprocp user usertime
usrpri vsize vsz wchan xstat
' ps -L
}

atf_test_case l_flag
l_flag_head()
{
	atf_set "descr" "Verify the usage of option 'l'"
}

l_flag_body()
{
	atf_check -s exit:0 -o inline:' UID   PID  PPID CPU PRI NI   VSZ   RSS MWCHAN STAT TT     TIME COMMAND
1001   770   769   0  22  0 37872  6276 pause  Is    0  0:01.27 -zsh (zsh)
1001 98606   770   0  21  0 48868 14564 kqread I+    0  2:15.89 nvim generate_test.cpp
1001   834   833   0  21  0 37856  7236 pause  Ss    1  0:06.83 -zsh (zsh)
1001 11606   834   0  23  0  5000   988 wait   S+    1  0:00.00 make run
1001 11608 11606   0  52  0 16436  3696 piperd S+    1  0:00.03 ./generate_test
1001 11854 11608   0  72  0 21164  2300 -      R+    1  0:00.00 ps -l
1001  1765  1764   0  21  0 37728  6600 ttyin  Ss+   2  0:02.53 -zsh (zsh)
' ps -l
}

atf_test_case m_flag
m_flag_head()
{
	atf_set "descr" "Verify the usage of option 'm'"
}

m_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
98606  0  I+   2:15.89 nvim generate_test.cpp
  770  0  Is   0:01.27 -zsh (zsh)
  834  1  Ss   0:06.83 -zsh (zsh)
 1765  2  Ss+  0:02.53 -zsh (zsh)
11606  1  S+   0:00.00 make run
11608  1  S+   0:00.03 ./generate_test
11856  1  R+   0:00.00 ps -m
' ps -m
}

atf_test_case r_flag
r_flag_head()
{
	atf_set "descr" "Verify the usage of option 'r'"
}

r_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
11608  1  S+   0:00.03 ./generate_test
  834  1  Ss   0:06.83 -zsh (zsh)
11606  1  S+   0:00.00 make run
 1765  2  Ss+  0:02.53 -zsh (zsh)
  770  0  Is   0:01.27 -zsh (zsh)
98606  0  I+   2:15.89 nvim generate_test.cpp
11861  1  R+   0:00.00 ps -r
' ps -r
}

atf_test_case S_flag
S_flag_head()
{
	atf_set "descr" "Verify the usage of option 'S'"
}

S_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  770  0  Is   2:45.00 -zsh (zsh)
98606  0  I+   2:38.04 nvim generate_test.cpp
  834  1  Ss   3:47.34 -zsh (zsh)
11606  1  S+   0:00.00 make run
11608  1  S+   0:00.43 ./generate_test
11862  1  R+   0:00.00 ps -S
 1765  2  Ss+  1:33.74 -zsh (zsh)
' ps -S
}

atf_test_case T_flag
T_flag_head()
{
	atf_set "descr" "Verify the usage of option 'T'"
}

T_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  834  1  Ss   0:06.83 -zsh (zsh)
11606  1  S+   0:00.00 make run
11608  1  S+   0:00.03 ./generate_test
11863  1  R+   0:00.00 ps -T
' ps -T
}

atf_test_case u_flag
u_flag_head()
{
	atf_set "descr" "Verify the usage of option 'u'"
}

u_flag_body()
{
	atf_check -s exit:0 -o inline:'USER     PID %CPU %MEM   VSZ   RSS TT  STAT STARTED    TIME COMMAND
zeebsd 11608  1.0  0.4 16436  3696  1  S+   21:09   0:00.03 ./generate_test
zeebsd   834  0.4  0.7 37856  7236  1  Ss   13:29   0:06.83 -zsh (zsh)
zeebsd 11606  0.4  0.1  5000   988  1  S+   21:09   0:00.00 make run
zeebsd  1765  0.4  0.6 37728  6600  2  Ss+  13:54   0:02.53 -zsh (zsh)
zeebsd   770  0.0  0.6 37872  6276  0  Is   13:16   0:01.27 -zsh (zsh)
zeebsd 98606  0.0  1.4 48868 14564  0  I+   15:03   2:15.89 nvim generate_test.cpp
zeebsd 11866  0.0  0.2 21164  2300  1  R+   21:09   0:00.00 ps -u
' ps -u
}

atf_test_case v_flag
v_flag_head()
{
	atf_set "descr" "Verify the usage of option 'v'"
}

v_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID STAT    TIME  SL  RE PAGEIN   VSZ   RSS LIM TSIZ %CPU %MEM COMMAND
98606 I+   2:15.89 127 127     72 48868 14564   - 2328  0.0  1.4 nvim generate_test.cpp
  770 Is   0:01.27 127 127     56 37872  6276   -  700  0.0  0.6 -zsh (zsh)
  834 Ss   0:06.83   1 127     10 37856  7236   -  700  0.4  0.7 -zsh (zsh)
 1765 Ss+  0:02.53   2 127      1 37728  6600   -  700  0.4  0.6 -zsh (zsh)
11606 S+   0:00.00   1   1      0  5000   988   -  692  0.4  0.1 make run
11608 S+   0:00.03   0   1      0 16436  3696   -   64  1.0  0.4 ./generate_test
11867 R+   0:00.00 127   0      0 21164  2300   -   32  0.0  0.2 ps -v
' ps -v
}

atf_test_case w_flag
w_flag_head()
{
	atf_set "descr" "Verify the usage of option 'w'"
}

w_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  770  0  Is   0:01.27 -zsh (zsh)
98606  0  I+   2:15.89 nvim generate_test.cpp
  834  1  Ss   0:06.83 -zsh (zsh)
11606  1  S+   0:00.00 make run
11608  1  S+   0:00.03 ./generate_test
11868  1  R+   0:00.00 ps -w
 1765  2  Ss+  0:02.53 -zsh (zsh)
' ps -w
}

atf_test_case X_flag
X_flag_head()
{
	atf_set "descr" "Verify the usage of option 'X'"
}

X_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  770  0  Is   0:01.27 -zsh (zsh)
98606  0  I+   2:15.89 nvim generate_test.cpp
  834  1  Ss   0:06.83 -zsh (zsh)
11606  1  S+   0:00.00 make run
11608  1  S+   0:00.03 ./generate_test
11869  1  R+   0:00.00 ps -X
 1765  2  Ss+  0:02.53 -zsh (zsh)
' ps -X
}

atf_test_case x_flag
x_flag_head()
{
	atf_set "descr" "Verify the usage of option 'x'"
}

x_flag_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  769  -  I    0:07.04 sshd: zeebsd@pts/0 (sshd)
  795  -  Ss   0:00.97 gpg-agent --homedir /home/zeebsd/.gnupg --use-standard-socket --
  802  -  Is   0:00.01 ssh-agent -s
  833  -  S    0:09.24 sshd: zeebsd@pts/1 (sshd)
 1764  -  S    0:06.19 sshd: zeebsd@pts/2 (sshd)
98607  -  Z    0:00.00 <defunct>
  770  0  Is   0:01.27 -zsh (zsh)
98606  0  I+   2:15.89 nvim generate_test.cpp
  834  1  Ss   0:06.83 -zsh (zsh)
11606  1  S+   0:00.00 make run
11608  1  S+   0:00.03 ./generate_test
11870  1  R+   0:00.00 ps -x
 1765  2  Ss+  0:02.53 -zsh (zsh)
' ps -x
}

atf_test_case Z_flag
Z_flag_head()
{
	atf_set "descr" "Verify the usage of option 'Z'"
}

Z_flag_body()
{
	atf_check -s exit:0 -o inline:'LABEL   PID TT  STAT    TIME COMMAND
        770  0  Is   0:01.27 -zsh (zsh)
      98606  0  I+   2:15.89 nvim generate_test.cpp
        834  1  Ss   0:06.83 -zsh (zsh)
      11606  1  S+   0:00.00 make run
      11608  1  S+   0:00.03 ./generate_test
      11871  1  R+   0:00.00 ps -Z
       1765  2  Ss+  0:02.53 -zsh (zsh)
' ps -Z
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s exit:1 -e inline:'ps: option requires an argument -- G
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
' ps -G
	atf_check -s exit:1 -e inline:'ps: option requires an argument -- J
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
' ps -J
	atf_check -s exit:1 -e inline:'ps: option requires an argument -- M
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
' ps -M
	atf_check -s exit:1 -e inline:'ps: option requires an argument -- N
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
' ps -N
	atf_check -s exit:1 -e inline:'ps: option requires an argument -- O
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
' ps -O
	atf_check -s exit:1 -e inline:'ps: option requires an argument -- o
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
' ps -o
	atf_check -s exit:1 -e inline:'ps: option requires an argument -- p
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
' ps -p
	atf_check -s exit:1 -e inline:'ps: option requires an argument -- t
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
' ps -t
	atf_check -s exit:1 -e inline:'ps: option requires an argument -- U
usage: ps [-aCcdefHhjlmrSTuvwXxZ] [-O fmt | -o fmt] [-G gid[,gid...]]
          [-J jid[,jid...]] [-M core] [-N system]
          [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
       ps [-L]
' ps -U
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that ps executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:'  PID TT  STAT    TIME COMMAND
  770  0  Is   0:01.27 -zsh (zsh)
98606  0  I+   2:15.89 nvim generate_test.cpp
  834  1  Ss   0:06.83 -zsh (zsh)
11606  1  S+   0:00.00 make run
11608  1  S+   0:00.03 ./generate_test
11872  1  R+   0:00.00 ps
 1765  2  Ss+  0:02.53 -zsh (zsh)
' ps
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
