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

atf_test_case 4_flag
4_flag_head()
{
	atf_set "descr" "Verify the usage of option '4'"
}

4_flag_body()
{
	atf_check -s exit:0 -o inline:"USER     COMMAND    PID   FD PROTO  LOCAL ADDRESS         FOREIGN ADDRESS      
zeebsd   sshd       60028 3  tcp4   10.0.2.15:22          10.0.2.2:44246
root     sshd       60025 3  tcp4   10.0.2.15:22          10.0.2.2:44246
zeebsd   sshd       2872  3  tcp4   10.0.2.15:22          10.0.2.2:44104
root     sshd       2869  3  tcp4   10.0.2.15:22          10.0.2.2:44104
root     sshd       705   4  tcp4   *:22                  *:*
root     syslogd    572   7  udp4   *:514                 *:*
" sockstat -4
}

atf_test_case 6_flag
6_flag_head()
{
	atf_set "descr" "Verify the usage of option '6'"
}

6_flag_body()
{
	atf_check -s exit:0 -o inline:"USER     COMMAND    PID   FD PROTO  LOCAL ADDRESS         FOREIGN ADDRESS      
root     sshd       705   3  tcp6   *:22                  *:*
root     syslogd    572   6  udp6   *:514                 *:*
" sockstat -6
}

atf_test_case c_flag
c_flag_head()
{
	atf_set "descr" "Verify the usage of option 'c'"
}

c_flag_body()
{
	atf_check -s exit:0 -o inline:"USER     COMMAND    PID   FD PROTO  LOCAL ADDRESS         FOREIGN ADDRESS      
zeebsd   sshd       60028 3  tcp4   10.0.2.15:22          10.0.2.2:44246
zeebsd   sshd       60028 4  stream -> ??
zeebsd   sshd       60028 5  dgram  -> ??
root     sshd       60025 3  tcp4   10.0.2.15:22          10.0.2.2:44246
root     sshd       60025 5  stream -> ??
zeebsd   sshd       2872  3  tcp4   10.0.2.15:22          10.0.2.2:44104
zeebsd   sshd       2872  4  stream -> ??
zeebsd   sshd       2872  5  dgram  -> ??
root     sshd       2869  3  tcp4   10.0.2.15:22          10.0.2.2:44104
root     sshd       2869  5  stream -> ??
root     devd       405   7  dgram  -> ??
" sockstat -c
}

atf_test_case L_flag
L_flag_head()
{
	atf_set "descr" "Verify the usage of option 'L'"
}

L_flag_body()
{
	atf_check -s exit:0 -o inline:"USER     COMMAND    PID   FD PROTO  LOCAL ADDRESS         FOREIGN ADDRESS      
zeebsd   sshd       60028 3  tcp4   10.0.2.15:22          10.0.2.2:44246
zeebsd   sshd       60028 4  stream -> ??
zeebsd   sshd       60028 5  dgram  -> /var/run/log
root     sshd       60025 3  tcp4   10.0.2.15:22          10.0.2.2:44246
root     sshd       60025 5  stream -> ??
zeebsd   ssh-agent  60021 4  stream /tmp/ssh-jArCznbJo6n9/agent.60019
zeebsd   sshd       2872  3  tcp4   10.0.2.15:22          10.0.2.2:44104
zeebsd   sshd       2872  4  stream -> ??
zeebsd   sshd       2872  5  dgram  -> /var/run/log
root     sshd       2869  3  tcp4   10.0.2.15:22          10.0.2.2:44104
root     sshd       2869  5  stream -> ??
zeebsd   gpg-agent  797   3  stream /home/zeebsd/.gnupg/S.gpg-agent
zeebsd   gpg-agent  797   4  stream /home/zeebsd/.gnupg/S.gpg-agent.extra
zeebsd   gpg-agent  797   5  stream /home/zeebsd/.gnupg/S.gpg-agent.browser
zeebsd   gpg-agent  797   6  stream /home/zeebsd/.gnupg/S.gpg-agent.ssh
root     sshd       705   3  tcp6   *:22                  *:*
root     sshd       705   4  tcp4   *:22                  *:*
root     syslogd    572   4  dgram  /var/run/log
root     syslogd    572   5  dgram  /var/run/logpriv
root     syslogd    572   6  udp6   *:514                 *:*
root     syslogd    572   7  udp4   *:514                 *:*
root     devd       405   4  stream /var/run/devd.pipe
root     devd       405   5  seqpac /var/run/devd.seqpacket.pipe
root     devd       405   7  dgram  -> /var/run/logpriv
" sockstat -L
}

atf_test_case l_flag
l_flag_head()
{
	atf_set "descr" "Verify the usage of option 'l'"
}

l_flag_body()
{
	atf_check -s exit:0 -o inline:"USER     COMMAND    PID   FD PROTO  LOCAL ADDRESS         FOREIGN ADDRESS      
zeebsd   ssh-agent  60021 4  stream /tmp/ssh-jArCznbJo6n9/agent.60019
zeebsd   gpg-agent  797   3  stream /home/zeebsd/.gnupg/S.gpg-agent
zeebsd   gpg-agent  797   4  stream /home/zeebsd/.gnupg/S.gpg-agent.extra
zeebsd   gpg-agent  797   5  stream /home/zeebsd/.gnupg/S.gpg-agent.browser
zeebsd   gpg-agent  797   6  stream /home/zeebsd/.gnupg/S.gpg-agent.ssh
root     sshd       705   3  tcp6   *:22                  *:*
root     sshd       705   4  tcp4   *:22                  *:*
root     syslogd    572   4  dgram  /var/run/log
root     syslogd    572   5  dgram  /var/run/logpriv
root     syslogd    572   6  udp6   *:514                 *:*
root     syslogd    572   7  udp4   *:514                 *:*
root     devd       405   4  stream /var/run/devd.pipe
root     devd       405   5  seqpac /var/run/devd.seqpacket.pipe
" sockstat -l
}

atf_test_case s_flag
s_flag_head()
{
	atf_set "descr" "Verify the usage of option 's'"
}

s_flag_body()
{
	atf_check -s exit:0 -o inline:"USER     COMMAND    PID   FD PROTO  LOCAL ADDRESS         FOREIGN ADDRESS       STATE       
zeebsd   sshd       60028 3  tcp4   10.0.2.15:22          10.0.2.2:44246        ESTABLISHED
zeebsd   sshd       60028 4  stream -> ??
zeebsd   sshd       60028 5  dgram  -> /var/run/log
root     sshd       60025 3  tcp4   10.0.2.15:22          10.0.2.2:44246        ESTABLISHED
root     sshd       60025 5  stream -> ??
zeebsd   ssh-agent  60021 4  stream /tmp/ssh-jArCznbJo6n9/agent.60019
zeebsd   sshd       2872  3  tcp4   10.0.2.15:22          10.0.2.2:44104        ESTABLISHED
zeebsd   sshd       2872  4  stream -> ??
zeebsd   sshd       2872  5  dgram  -> /var/run/log
root     sshd       2869  3  tcp4   10.0.2.15:22          10.0.2.2:44104        ESTABLISHED
root     sshd       2869  5  stream -> ??
zeebsd   gpg-agent  797   3  stream /home/zeebsd/.gnupg/S.gpg-agent
zeebsd   gpg-agent  797   4  stream /home/zeebsd/.gnupg/S.gpg-agent.extra
zeebsd   gpg-agent  797   5  stream /home/zeebsd/.gnupg/S.gpg-agent.browser
zeebsd   gpg-agent  797   6  stream /home/zeebsd/.gnupg/S.gpg-agent.ssh
root     sshd       705   3  tcp6   *:22                  *:*                   LISTEN
root     sshd       705   4  tcp4   *:22                  *:*                   LISTEN
root     syslogd    572   4  dgram  /var/run/log
root     syslogd    572   5  dgram  /var/run/logpriv
root     syslogd    572   6  udp6   *:514                 *:*
root     syslogd    572   7  udp4   *:514                 *:*
root     devd       405   4  stream /var/run/devd.pipe
root     devd       405   5  seqpac /var/run/devd.seqpacket.pipe
root     devd       405   7  dgram  -> /var/run/logpriv
" sockstat -s
}

atf_test_case u_flag
u_flag_head()
{
	atf_set "descr" "Verify the usage of option 'u'"
}

u_flag_body()
{
	atf_check -s exit:0 -o inline:"USER     COMMAND    PID   FD PROTO  LOCAL ADDRESS         FOREIGN ADDRESS      
zeebsd   sshd       60028 4  stream -> ??
zeebsd   sshd       60028 5  dgram  -> /var/run/log
root     sshd       60025 5  stream -> ??
zeebsd   ssh-agent  60021 4  stream /tmp/ssh-jArCznbJo6n9/agent.60019
zeebsd   sshd       2872  4  stream -> ??
zeebsd   sshd       2872  5  dgram  -> /var/run/log
root     sshd       2869  5  stream -> ??
zeebsd   gpg-agent  797   3  stream /home/zeebsd/.gnupg/S.gpg-agent
zeebsd   gpg-agent  797   4  stream /home/zeebsd/.gnupg/S.gpg-agent.extra
zeebsd   gpg-agent  797   5  stream /home/zeebsd/.gnupg/S.gpg-agent.browser
zeebsd   gpg-agent  797   6  stream /home/zeebsd/.gnupg/S.gpg-agent.ssh
root     syslogd    572   4  dgram  /var/run/log
root     syslogd    572   5  dgram  /var/run/logpriv
root     devd       405   4  stream /var/run/devd.pipe
root     devd       405   5  seqpac /var/run/devd.seqpacket.pipe
root     devd       405   7  dgram  -> /var/run/logpriv
" sockstat -u
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"sockstat: option requires an argument -- j
usage: sockstat [-46cLlsu] [-j jid] [-p ports] [-P protocols]
" sockstat -j
	atf_check -s not-exit:0 -e inline:"sockstat: option requires an argument -- p
usage: sockstat [-46cLlsu] [-j jid] [-p ports] [-P protocols]
" sockstat -p
	atf_check -s not-exit:0 -e inline:"sockstat: option requires an argument -- P
usage: sockstat [-46cLlsu] [-j jid] [-p ports] [-P protocols]
" sockstat -P
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that sockstat(1) executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:"USER     COMMAND    PID   FD PROTO  LOCAL ADDRESS         FOREIGN ADDRESS      
zeebsd   sshd       60028 3  tcp4   10.0.2.15:22          10.0.2.2:44246
zeebsd   sshd       60028 4  stream -> ??
zeebsd   sshd       60028 5  dgram  -> /var/run/log
root     sshd       60025 3  tcp4   10.0.2.15:22          10.0.2.2:44246
root     sshd       60025 5  stream -> ??
zeebsd   ssh-agent  60021 4  stream /tmp/ssh-jArCznbJo6n9/agent.60019
zeebsd   sshd       2872  3  tcp4   10.0.2.15:22          10.0.2.2:44104
zeebsd   sshd       2872  4  stream -> ??
zeebsd   sshd       2872  5  dgram  -> /var/run/log
root     sshd       2869  3  tcp4   10.0.2.15:22          10.0.2.2:44104
root     sshd       2869  5  stream -> ??
zeebsd   gpg-agent  797   3  stream /home/zeebsd/.gnupg/S.gpg-agent
zeebsd   gpg-agent  797   4  stream /home/zeebsd/.gnupg/S.gpg-agent.extra
zeebsd   gpg-agent  797   5  stream /home/zeebsd/.gnupg/S.gpg-agent.browser
zeebsd   gpg-agent  797   6  stream /home/zeebsd/.gnupg/S.gpg-agent.ssh
root     sshd       705   3  tcp6   *:22                  *:*
root     sshd       705   4  tcp4   *:22                  *:*
root     syslogd    572   4  dgram  /var/run/log
root     syslogd    572   5  dgram  /var/run/logpriv
root     syslogd    572   6  udp6   *:514                 *:*
root     syslogd    572   7  udp4   *:514                 *:*
root     devd       405   4  stream /var/run/devd.pipe
root     devd       405   5  seqpac /var/run/devd.seqpacket.pipe
root     devd       405   7  dgram  -> /var/run/logpriv
" sockstat
}

atf_init_test_cases()
{
	atf_add_test_case 4_flag
	atf_add_test_case 6_flag
	atf_add_test_case c_flag
	atf_add_test_case L_flag
	atf_add_test_case l_flag
	atf_add_test_case s_flag
	atf_add_test_case u_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
