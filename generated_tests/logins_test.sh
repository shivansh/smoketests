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
	atf_check -s exit:0 -o inline:"root            0       wheel           0       Charlie &
                        0 0
toor            0       wheel           0       Bourne-again Superuser
                        0 0
daemon          1       daemon          1       Owner of many system processes
                        0 0
operator        2       operator        5       System &
                        0 0
bin             3       bin             7       Binaries Commands and Source
                        0 0
tty             4       nogroup         65533   Tty Sandbox
                        0 0
kmem            5       nogroup         65533   KMem Sandbox
                        0 0
games           7       games           13      Games pseudo-user
                        0 0
news            8       news            8       News Subsystem
                        0 0
man             9       man             9       Mister Man Pages
                        0 0
sshd            22      sshd            22      Secure Shell Daemon
                        0 0
smmsp           25      smmsp           25      Sendmail Submission User
                        0 0
mailnull        26      mailnull        26      Sendmail Default User
                        0 0
bind            53      bind            53      Bind Sandbox
                        0 0
unbound         59      unbound         59      Unbound DNS Resolver
                        0 0
proxy           62      proxy           62      Packet Filter pseudo-user
                        0 0
_pflogd         64      _pflogd         64      pflogd privsep user
                        0 0
_dhcp           65      _dhcp           65      dhcp programs
                        0 0
uucp            66      uucp            66      UUCP pseudo-user
                        0 0
pop             68      mail            6       Post Office Owner
                        0 0
auditdistd      78      audit           77      Auditdistd unprivileged user
                        0 0
www             80      www             80      World Wide Web Owner
                        0 0
_ypldap         160     _ypldap         160     YP LDAP unprivileged user
                        0 0
cups            193     cups            193     Cups Owner
                        0 0
messagebus      556     messagebus      556     D-BUS Daemon User
                        0 0
avahi           558     avahi           558     Avahi Daemon User
                        0 0
_tss            601     _tss            601     TrouSerS user
                        0 0
hast            845     hast            845     HAST unprivileged user
                        0 0
git_daemon      964     git_daemon      964     git daemon
                        0 0
tests           977     nobody          65534   Unprivileged user for tests
                        0 0
zeebsd          1001    zeebsd          1001    Shivansh Rai
                        0 0
nobody          65534   nobody          65534   Unprivileged user
                        0 0
" logins -a
}

atf_test_case d_flag
d_flag_head()
{
	atf_set "descr" "Verify the usage of option 'd'"
}

d_flag_body()
{
	atf_check -s exit:0 -o inline:"root            0       wheel           0       Charlie &
toor            0       wheel           0       Bourne-again Superuser
" logins -d
}

atf_test_case m_flag
m_flag_head()
{
	atf_set "descr" "Verify the usage of option 'm'"
}

m_flag_body()
{
	atf_check -s exit:0 -o inline:"root            0       wheel           0       Charlie &
                        operator        5      
toor            0       wheel           0       Bourne-again Superuser
daemon          1       daemon          1       Owner of many system processes
operator        2       operator        5       System &
bin             3       bin             7       Binaries Commands and Source
tty             4       nogroup         65533   Tty Sandbox
kmem            5       nogroup         65533   KMem Sandbox
games           7       games           13      Games pseudo-user
news            8       news            8       News Subsystem
man             9       man             9       Mister Man Pages
sshd            22      sshd            22      Secure Shell Daemon
smmsp           25      smmsp           25      Sendmail Submission User
mailnull        26      mailnull        26      Sendmail Default User
bind            53      bind            53      Bind Sandbox
unbound         59      unbound         59      Unbound DNS Resolver
proxy           62      proxy           62      Packet Filter pseudo-user
_pflogd         64      _pflogd         64      pflogd privsep user
_dhcp           65      _dhcp           65      dhcp programs
uucp            66      uucp            66      UUCP pseudo-user
pop             68      mail            6       Post Office Owner
auditdistd      78      audit           77      Auditdistd unprivileged user
www             80      www             80      World Wide Web Owner
_ypldap         160     _ypldap         160     YP LDAP unprivileged user
cups            193     cups            193     Cups Owner
messagebus      556     messagebus      556     D-BUS Daemon User
avahi           558     avahi           558     Avahi Daemon User
_tss            601     _tss            601     TrouSerS user
hast            845     hast            845     HAST unprivileged user
git_daemon      964     git_daemon      964     git daemon
tests           977     nobody          65534   Unprivileged user for tests
zeebsd          1001    zeebsd          1001    Shivansh Rai
                        wheel           0      
nobody          65534   nobody          65534   Unprivileged user
" logins -m
}

atf_test_case o_flag
o_flag_head()
{
	atf_set "descr" "Verify the usage of option 'o'"
}

o_flag_body()
{
	atf_check -s exit:0 -o inline:"root:0:wheel:0:Charlie &
toor:0:wheel:0:Bourne-again Superuser
daemon:1:daemon:1:Owner of many system processes
operator:2:operator:5:System &
bin:3:bin:7:Binaries Commands and Source
tty:4:nogroup:65533:Tty Sandbox
kmem:5:nogroup:65533:KMem Sandbox
games:7:games:13:Games pseudo-user
news:8:news:8:News Subsystem
man:9:man:9:Mister Man Pages
sshd:22:sshd:22:Secure Shell Daemon
smmsp:25:smmsp:25:Sendmail Submission User
mailnull:26:mailnull:26:Sendmail Default User
bind:53:bind:53:Bind Sandbox
unbound:59:unbound:59:Unbound DNS Resolver
proxy:62:proxy:62:Packet Filter pseudo-user
_pflogd:64:_pflogd:64:pflogd privsep user
_dhcp:65:_dhcp:65:dhcp programs
uucp:66:uucp:66:UUCP pseudo-user
pop:68:mail:6:Post Office Owner
auditdistd:78:audit:77:Auditdistd unprivileged user
www:80:www:80:World Wide Web Owner
_ypldap:160:_ypldap:160:YP LDAP unprivileged user
cups:193:cups:193:Cups Owner
messagebus:556:messagebus:556:D-BUS Daemon User
avahi:558:avahi:558:Avahi Daemon User
_tss:601:_tss:601:TrouSerS user
hast:845:hast:845:HAST unprivileged user
git_daemon:964:git_daemon:964:git daemon
tests:977:nobody:65534:Unprivileged user for tests
zeebsd:1001:zeebsd:1001:Shivansh Rai
nobody:65534:nobody:65534:Unprivileged user
" logins -o
}

atf_test_case p_flag
p_flag_head()
{
	atf_set "descr" "Verify the usage of option 'p'"
}

p_flag_body()
{
	atf_check -s exit:0 -o empty logins -p
}

atf_test_case s_flag
s_flag_head()
{
	atf_set "descr" "Verify the usage of option 's'"
}

s_flag_body()
{
	atf_check -s exit:0 -o inline:"root            0       wheel           0       Charlie &
toor            0       wheel           0       Bourne-again Superuser
daemon          1       daemon          1       Owner of many system processes
operator        2       operator        5       System &
bin             3       bin             7       Binaries Commands and Source
tty             4       nogroup         65533   Tty Sandbox
kmem            5       nogroup         65533   KMem Sandbox
games           7       games           13      Games pseudo-user
news            8       news            8       News Subsystem
man             9       man             9       Mister Man Pages
sshd            22      sshd            22      Secure Shell Daemon
smmsp           25      smmsp           25      Sendmail Submission User
mailnull        26      mailnull        26      Sendmail Default User
bind            53      bind            53      Bind Sandbox
unbound         59      unbound         59      Unbound DNS Resolver
proxy           62      proxy           62      Packet Filter pseudo-user
_pflogd         64      _pflogd         64      pflogd privsep user
_dhcp           65      _dhcp           65      dhcp programs
uucp            66      uucp            66      UUCP pseudo-user
pop             68      mail            6       Post Office Owner
auditdistd      78      audit           77      Auditdistd unprivileged user
www             80      www             80      World Wide Web Owner
_ypldap         160     _ypldap         160     YP LDAP unprivileged user
cups            193     cups            193     Cups Owner
messagebus      556     messagebus      556     D-BUS Daemon User
avahi           558     avahi           558     Avahi Daemon User
_tss            601     _tss            601     TrouSerS user
hast            845     hast            845     HAST unprivileged user
git_daemon      964     git_daemon      964     git daemon
tests           977     nobody          65534   Unprivileged user for tests
nobody          65534   nobody          65534   Unprivileged user
" logins -s
}

atf_test_case t_flag
t_flag_head()
{
	atf_set "descr" "Verify the usage of option 't'"
}

t_flag_body()
{
	atf_check -s exit:0 -o inline:"_dhcp           65      _dhcp           65      dhcp programs
_pflogd         64      _pflogd         64      pflogd privsep user
_tss            601     _tss            601     TrouSerS user
_ypldap         160     _ypldap         160     YP LDAP unprivileged user
auditdistd      78      audit           77      Auditdistd unprivileged user
avahi           558     avahi           558     Avahi Daemon User
bin             3       bin             7       Binaries Commands and Source
bind            53      bind            53      Bind Sandbox
cups            193     cups            193     Cups Owner
daemon          1       daemon          1       Owner of many system processes
games           7       games           13      Games pseudo-user
git_daemon      964     git_daemon      964     git daemon
hast            845     hast            845     HAST unprivileged user
kmem            5       nogroup         65533   KMem Sandbox
mailnull        26      mailnull        26      Sendmail Default User
man             9       man             9       Mister Man Pages
messagebus      556     messagebus      556     D-BUS Daemon User
news            8       news            8       News Subsystem
nobody          65534   nobody          65534   Unprivileged user
operator        2       operator        5       System &
pop             68      mail            6       Post Office Owner
proxy           62      proxy           62      Packet Filter pseudo-user
root            0       wheel           0       Charlie &
smmsp           25      smmsp           25      Sendmail Submission User
sshd            22      sshd            22      Secure Shell Daemon
tests           977     nobody          65534   Unprivileged user for tests
toor            0       wheel           0       Bourne-again Superuser
tty             4       nogroup         65533   Tty Sandbox
unbound         59      unbound         59      Unbound DNS Resolver
uucp            66      uucp            66      UUCP pseudo-user
www             80      www             80      World Wide Web Owner
zeebsd          1001    zeebsd          1001    Shivansh Rai
" logins -t
}

atf_test_case u_flag
u_flag_head()
{
	atf_set "descr" "Verify the usage of option 'u'"
}

u_flag_body()
{
	atf_check -s exit:0 -o inline:"zeebsd          1001    zeebsd          1001    Shivansh Rai
" logins -u
}

atf_test_case x_flag
x_flag_head()
{
	atf_set "descr" "Verify the usage of option 'x'"
}

x_flag_body()
{
	atf_check -s exit:0 -o inline:"root            0       wheel           0       Charlie &
                        /root
                        /usr/local/bin/zsh
toor            0       wheel           0       Bourne-again Superuser
                        /root
                        
daemon          1       daemon          1       Owner of many system processes
                        /root
                        /usr/sbin/nologin
operator        2       operator        5       System &
                        /
                        /usr/sbin/nologin
bin             3       bin             7       Binaries Commands and Source
                        /
                        /usr/sbin/nologin
tty             4       nogroup         65533   Tty Sandbox
                        /
                        /usr/sbin/nologin
kmem            5       nogroup         65533   KMem Sandbox
                        /
                        /usr/sbin/nologin
games           7       games           13      Games pseudo-user
                        /
                        /usr/sbin/nologin
news            8       news            8       News Subsystem
                        /
                        /usr/sbin/nologin
man             9       man             9       Mister Man Pages
                        /usr/share/man
                        /usr/sbin/nologin
sshd            22      sshd            22      Secure Shell Daemon
                        /var/empty
                        /usr/sbin/nologin
smmsp           25      smmsp           25      Sendmail Submission User
                        /var/spool/clientmqueue
                        /usr/sbin/nologin
mailnull        26      mailnull        26      Sendmail Default User
                        /var/spool/mqueue
                        /usr/sbin/nologin
bind            53      bind            53      Bind Sandbox
                        /
                        /usr/sbin/nologin
unbound         59      unbound         59      Unbound DNS Resolver
                        /var/unbound
                        /usr/sbin/nologin
proxy           62      proxy           62      Packet Filter pseudo-user
                        /nonexistent
                        /usr/sbin/nologin
_pflogd         64      _pflogd         64      pflogd privsep user
                        /var/empty
                        /usr/sbin/nologin
_dhcp           65      _dhcp           65      dhcp programs
                        /var/empty
                        /usr/sbin/nologin
uucp            66      uucp            66      UUCP pseudo-user
                        /var/spool/uucppublic
                        /usr/local/libexec/uucp/uucico
pop             68      mail            6       Post Office Owner
                        /nonexistent
                        /usr/sbin/nologin
auditdistd      78      audit           77      Auditdistd unprivileged user
                        /var/empty
                        /usr/sbin/nologin
www             80      www             80      World Wide Web Owner
                        /nonexistent
                        /usr/sbin/nologin
_ypldap         160     _ypldap         160     YP LDAP unprivileged user
                        /var/empty
                        /usr/sbin/nologin
cups            193     cups            193     Cups Owner
                        /nonexistent
                        /usr/sbin/nologin
messagebus      556     messagebus      556     D-BUS Daemon User
                        /nonexistent
                        /usr/sbin/nologin
avahi           558     avahi           558     Avahi Daemon User
                        /nonexistent
                        /usr/sbin/nologin
_tss            601     _tss            601     TrouSerS user
                        /var/empty
                        /usr/sbin/nologin
hast            845     hast            845     HAST unprivileged user
                        /var/empty
                        /usr/sbin/nologin
git_daemon      964     git_daemon      964     git daemon
                        /nonexistent
                        /usr/sbin/nologin
tests           977     nobody          65534   Unprivileged user for tests
                        /nonexistent
                        /usr/sbin/nologin
zeebsd          1001    zeebsd          1001    Shivansh Rai
                        /home/zeebsd
                        /usr/local/bin/zsh
nobody          65534   nobody          65534   Unprivileged user
                        /nonexistent
                        /usr/sbin/nologin
" logins -x
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"logins: option requires an argument -- g
usage: logins [-admopstux] [-g group] [-l login]
" logins -g
	atf_check -s not-exit:0 -e inline:"logins: option requires an argument -- l
usage: logins [-admopstux] [-g group] [-l login]
" logins -l
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that logins(1) executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:"root            0       wheel           0       Charlie &
toor            0       wheel           0       Bourne-again Superuser
daemon          1       daemon          1       Owner of many system processes
operator        2       operator        5       System &
bin             3       bin             7       Binaries Commands and Source
tty             4       nogroup         65533   Tty Sandbox
kmem            5       nogroup         65533   KMem Sandbox
games           7       games           13      Games pseudo-user
news            8       news            8       News Subsystem
man             9       man             9       Mister Man Pages
sshd            22      sshd            22      Secure Shell Daemon
smmsp           25      smmsp           25      Sendmail Submission User
mailnull        26      mailnull        26      Sendmail Default User
bind            53      bind            53      Bind Sandbox
unbound         59      unbound         59      Unbound DNS Resolver
proxy           62      proxy           62      Packet Filter pseudo-user
_pflogd         64      _pflogd         64      pflogd privsep user
_dhcp           65      _dhcp           65      dhcp programs
uucp            66      uucp            66      UUCP pseudo-user
pop             68      mail            6       Post Office Owner
auditdistd      78      audit           77      Auditdistd unprivileged user
www             80      www             80      World Wide Web Owner
_ypldap         160     _ypldap         160     YP LDAP unprivileged user
cups            193     cups            193     Cups Owner
messagebus      556     messagebus      556     D-BUS Daemon User
avahi           558     avahi           558     Avahi Daemon User
_tss            601     _tss            601     TrouSerS user
hast            845     hast            845     HAST unprivileged user
git_daemon      964     git_daemon      964     git daemon
tests           977     nobody          65534   Unprivileged user for tests
zeebsd          1001    zeebsd          1001    Shivansh Rai
nobody          65534   nobody          65534   Unprivileged user
" logins
}

atf_init_test_cases()
{
	atf_add_test_case a_flag
	atf_add_test_case d_flag
	atf_add_test_case m_flag
	atf_add_test_case o_flag
	atf_add_test_case p_flag
	atf_add_test_case s_flag
	atf_add_test_case t_flag
	atf_add_test_case u_flag
	atf_add_test_case x_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
