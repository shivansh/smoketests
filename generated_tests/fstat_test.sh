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

atf_test_case f_flag
f_flag_head()
{
	atf_set "descr" "Verify the usage of option 'f'"
}

f_flag_body()
{
	atf_check -s exit:0 -o inline:"USER     CMD          PID   FD MOUNT      INUM MODE         SZ|DV R/W
zeebsd   fstat      64952 text /        3692920 -r-xr-xr-x   17920  r
zeebsd   fstat      64952   wd /        981004 drwxr-xr-x    1024  r
zeebsd   fstat      64952 root /             2 drwxr-xr-x    1024  r
zeebsd   fstat      64952    3 -        1633767 -rw-r--r--       0  w
zeebsd   fstat      64952    4 /        184303 -rw-r--r--   40960  r
zeebsd   generate_tests 63758 text /        971668 -rwxr-xr-x  380796  r
zeebsd   generate_tests 63758   wd /        981004 drwxr-xr-x    1024  r
zeebsd   generate_tests 63758 root /             2 drwxr-xr-x    1024  r
zeebsd   generate_tests 63758    3 -        1633767 -rw-r--r--       0  w
zeebsd   make       63752 text /        3693184 -r-xr-xr-x  741544  r
zeebsd   make       63752   wd /        981004 drwxr-xr-x    1024  r
zeebsd   make       63752 root /             2 drwxr-xr-x    1024  r
zeebsd   zsh        60029 text /         25677 -r-xr-xr-x  742248  r
zeebsd   zsh        60029   wd /        981004 drwxr-xr-x    1024  r
zeebsd   zsh        60029 root /             2 drwxr-xr-x    1024  r
zeebsd   zsh        60029   12 /         26530 -rw-r--r--  186808  r
zeebsd   zsh        60029   13 /         25750 -rw-r--r--  181912  r
zeebsd   zsh        60029   14 /         26524 -rw-r--r--  191280  r
zeebsd   zsh        60029   16 /         25947 -rw-r--r--  268544  r
zeebsd   ssh-agent  60021 text /        3697714 -r-xr-xr-x   28608  r
zeebsd   ssh-agent  60021   wd /             2 drwxr-xr-x    1024  r
zeebsd   ssh-agent  60021 root /             2 drwxr-xr-x    1024  r
zeebsd   ssh-agent  60021    3 -        1633822 -rw-r--r--       1  w
zeebsd   zsh         2873 text /         25677 -r-xr-xr-x  742248  r
zeebsd   zsh         2873   wd /        981004 drwxr-xr-x    1024  r
zeebsd   zsh         2873 root /             2 drwxr-xr-x    1024  r
zeebsd   zsh         2873   12 /         26530 -rw-r--r--  186808  r
zeebsd   zsh         2873   13 /         25750 -rw-r--r--  181912  r
zeebsd   zsh         2873   14 /         26524 -rw-r--r--  191280  r
zeebsd   zsh         2873   15 /         26514 -rw-r--r--  274808  r
zeebsd   zsh         2873   16 /         25947 -rw-r--r--  268544  r
zeebsd   zsh         2873   17 /         26170 -rw-r--r--  3872880  r
zeebsd   gpg-agent    797 text /         23018 -r-xr-xr-x  360744  r
zeebsd   gpg-agent    797   wd /             2 drwxr-xr-x    1024  r
zeebsd   gpg-agent    797 root /             2 drwxr-xr-x    1024  r
" fstat -f
}

atf_test_case m_flag
m_flag_head()
{
	atf_set "descr" "Verify the usage of option 'm'"
}

m_flag_body()
{
	atf_check -s exit:0 -o inline:"USER     CMD          PID   FD MOUNT      INUM MODE         SZ|DV R/W
zeebsd   fstat      64955 text /        3692920 -r-xr-xr-x   17920  r
zeebsd   fstat      64955 ctty /dev         84 crw--w----   pts/1 rw
zeebsd   fstat      64955   wd /        981004 drwxr-xr-x    1024  r
zeebsd   fstat      64955 root /             2 drwxr-xr-x    1024  r
zeebsd   fstat      64955    0 /dev         84 crw--w----   pts/1 rw
zeebsd   fstat      64955    1* pipe fffff8003d5c9168 <-> fffff8003d5c9000      0 rw
zeebsd   fstat      64955    2* pipe fffff8003d5c9168 <-> fffff8003d5c9000      0 rw
zeebsd   fstat      64955    3 -        1633767 -rw-r--r--       0  w
zeebsd   fstat      64955    4 /        184303 -rw-r--r--   40960  r
zeebsd   fstat      64955 mmap /        3692920 -r-xr-xr-x   17920  r
zeebsd   fstat      64955 mmap /        1043330 -r-xr-xr-x  136760  r
zeebsd   fstat      64955 mmap /        3695312 -r--r--r--   40928  r
zeebsd   fstat      64955 mmap /        3695312 -r--r--r--   40928  r
zeebsd   fstat      64955 mmap /        2087142 -r--r--r--  1744432  r
zeebsd   fstat      64955 mmap /        2087142 -r--r--r--  1744432  r
zeebsd   fstat      64955 mmap /        2086669 -r--r--r--   97592  r
zeebsd   fstat      64955 mmap /        2086669 -r--r--r--   97592  r
zeebsd   fstat      64955 mmap /        2086698 -r--r--r--   60552  r
zeebsd   fstat      64955 mmap /        2086698 -r--r--r--   60552  r
zeebsd   fstat      64955 mmap /        2086701 -r--r--r--   74248  r
zeebsd   fstat      64955 mmap /        2086701 -r--r--r--   74248  r
zeebsd   generate_tests 63758 text /        971668 -rwxr-xr-x  380796  r
zeebsd   generate_tests 63758 ctty /dev         84 crw--w----   pts/1 rw
zeebsd   generate_tests 63758   wd /        981004 drwxr-xr-x    1024  r
zeebsd   generate_tests 63758 root /             2 drwxr-xr-x    1024  r
zeebsd   generate_tests 63758    0 /dev         84 crw--w----   pts/1 rw
zeebsd   generate_tests 63758    1 /dev         84 crw--w----   pts/1 rw
zeebsd   generate_tests 63758    2 /dev         84 crw--w----   pts/1 rw
zeebsd   generate_tests 63758    3 -        1633767 -rw-r--r--       0  w
zeebsd   generate_tests 63758    4* pipe fffff8003d5c9000 <-> fffff8003d5c9168      0 rw
zeebsd   generate_tests 63758 mmap /        971668 -rwxr-xr-x  380796  r
zeebsd   generate_tests 63758 mmap /        1043330 -r-xr-xr-x  136760  r
zeebsd   generate_tests 63758 mmap /        3795440 -rwxr-xr-x   12416  r
zeebsd   generate_tests 63758 mmap /        3795440 -rwxr-xr-x   12416  r
zeebsd   generate_tests 63758 mmap /        3795444 -rwxr-xr-x  111520  r
zeebsd   generate_tests 63758 mmap /        3795444 -rwxr-xr-x  111520  r
zeebsd   generate_tests 63758 mmap /        3695037 -r--r--r--  772424  r
zeebsd   generate_tests 63758 mmap /        3695037 -r--r--r--  772424  r
zeebsd   generate_tests 63758 mmap /        2086658 -r--r--r--  107624  r
zeebsd   generate_tests 63758 mmap /        2086658 -r--r--r--  107624  r
zeebsd   generate_tests 63758 mmap /        2086707 -r--r--r--  192584  r
zeebsd   generate_tests 63758 mmap /        2086707 -r--r--r--  192584  r
zeebsd   generate_tests 63758 mmap /        2086688 -r--r--r--   56608  r
zeebsd   generate_tests 63758 mmap /        2086688 -r--r--r--   56608  r
zeebsd   generate_tests 63758 mmap /        2087142 -r--r--r--  1744432  r
zeebsd   generate_tests 63758 mmap /        2087142 -r--r--r--  1744432  r
zeebsd   generate_tests 63758 mmap /        2086664 -r--r--r--  118352  r
zeebsd   generate_tests 63758 mmap /        2086664 -r--r--r--  118352  r
zeebsd   make       63752 text /        3693184 -r-xr-xr-x  741544  r
zeebsd   make       63752 ctty /dev         84 crw--w----   pts/1 rw
zeebsd   make       63752   wd /        981004 drwxr-xr-x    1024  r
zeebsd   make       63752 root /             2 drwxr-xr-x    1024  r
zeebsd   make       63752    0 /dev         84 crw--w----   pts/1 rw
zeebsd   make       63752    1 /dev         84 crw--w----   pts/1 rw
zeebsd   make       63752    2 /dev         84 crw--w----   pts/1 rw
zeebsd   make       63752 mmap /        3693184 -r-xr-xr-x  741544  r
zeebsd   make       63752 mmap /        3693184 -r-xr-xr-x  741544  r
zeebsd   zsh        60029 text /         25677 -r-xr-xr-x  742248  r
zeebsd   zsh        60029 ctty /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029   wd /        981004 drwxr-xr-x    1024  r
zeebsd   zsh        60029 root /             2 drwxr-xr-x    1024  r
zeebsd   zsh        60029    0 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029    1 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029    2 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029   10 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029   12 /         26530 -rw-r--r--  186808  r
zeebsd   zsh        60029   13 /         25750 -rw-r--r--  181912  r
zeebsd   zsh        60029   14 /         26524 -rw-r--r--  191280  r
zeebsd   zsh        60029   16 /         25947 -rw-r--r--  268544  r
zeebsd   zsh        60029 mmap /         25677 -r-xr-xr-x  742248  r
zeebsd   zsh        60029 mmap /         25677 -r-xr-xr-x  742248  r
zeebsd   zsh        60029 mmap /        1043330 -r-xr-xr-x  136760  r
zeebsd   zsh        60029 mmap /         26524 -rw-r--r--  191280  r
zeebsd   zsh        60029 mmap /         25750 -rw-r--r--  181912  r
zeebsd   zsh        60029 mmap /         25947 -rw-r--r--  268544  r
zeebsd   zsh        60029 mmap /         26530 -rw-r--r--  186808  r
zeebsd   zsh        60029 mmap /        2086676 -r--r--r--  375096  r
zeebsd   zsh        60029 mmap /        2086676 -r--r--r--  375096  r
zeebsd   zsh        60029 mmap /        2086707 -r--r--r--  192584  r
zeebsd   zsh        60029 mmap /        2086707 -r--r--r--  192584  r
zeebsd   zsh        60029 mmap /        2087142 -r--r--r--  1744432  r
zeebsd   zsh        60029 mmap /        2087142 -r--r--r--  1744432  r
zeebsd   zsh        60029 mmap /         25705 -r-xr-xr-x  338616  r
zeebsd   zsh        60029 mmap /         25705 -r-xr-xr-x  338616  r
zeebsd   zsh        60029 mmap /         25681 -r-xr-xr-x  148504  r
zeebsd   zsh        60029 mmap /         25681 -r-xr-xr-x  148504  r
zeebsd   zsh        60029 mmap /         25682 -r-xr-xr-x   66264  r
zeebsd   zsh        60029 mmap /         25682 -r-xr-xr-x   66264  r
zeebsd   zsh        60029 mmap /         25710 -r-xr-xr-x   29432  r
zeebsd   zsh        60029 mmap /         25710 -r-xr-xr-x   29432  r
zeebsd   zsh        60029 mmap /         25689 -r-xr-xr-x    8384  r
zeebsd   zsh        60029 mmap /         25689 -r-xr-xr-x    8384  r
zeebsd   zsh        60029 mmap /         25703 -r-xr-xr-x    8696  r
zeebsd   zsh        60029 mmap /         25703 -r-xr-xr-x    8696  r
zeebsd   zsh        60029 mmap /         25695 -r-xr-xr-x   42808  r
zeebsd   zsh        60029 mmap /         25695 -r-xr-xr-x   42808  r
zeebsd   zsh        60029 mmap /         25697 -r-xr-xr-x    8760  r
zeebsd   zsh        60029 mmap /         25697 -r-xr-xr-x    8760  r
zeebsd   ssh-agent  60021 text /        3697714 -r-xr-xr-x   28608  r
zeebsd   ssh-agent  60021   wd /             2 drwxr-xr-x    1024  r
zeebsd   ssh-agent  60021 root /             2 drwxr-xr-x    1024  r
zeebsd   ssh-agent  60021    0 /dev         26 crw-rw-rw-    null rw
zeebsd   ssh-agent  60021    1 /dev         26 crw-rw-rw-    null rw
zeebsd   ssh-agent  60021    2 /dev         26 crw-rw-rw-    null rw
zeebsd   ssh-agent  60021    3 -        1633822 -rw-r--r--       1  w
zeebsd   ssh-agent  60021    4* local stream fffff80003b45870
zeebsd   ssh-agent  60021 mmap /        3697714 -r-xr-xr-x   28608  r
zeebsd   ssh-agent  60021 mmap /        1043330 -r-xr-xr-x  136760  r
zeebsd   ssh-agent  60021 mmap /        3697695 -r--r--r--  647000  r
zeebsd   ssh-agent  60021 mmap /        3697695 -r--r--r--  647000  r
zeebsd   ssh-agent  60021 mmap /        2087144 -r--r--r--  2529000  r
zeebsd   ssh-agent  60021 mmap /        2087144 -r--r--r--  2529000  r
zeebsd   ssh-agent  60021 mmap /        2087142 -r--r--r--  1744432  r
zeebsd   ssh-agent  60021 mmap /        2087142 -r--r--r--  1744432  r
zeebsd   ssh-agent  60021 mmap /        3695246 -r--r--r--  382384  r
zeebsd   ssh-agent  60021 mmap /        3695246 -r--r--r--  382384  r
zeebsd   ssh-agent  60021 mmap /        2086668 -r--r--r--   57904  r
zeebsd   ssh-agent  60021 mmap /        2086668 -r--r--r--   57904  r
zeebsd   ssh-agent  60021 mmap /        2086674 -r--r--r--   95072  r
zeebsd   ssh-agent  60021 mmap /        2086674 -r--r--r--   95072  r
zeebsd   zsh         2873 text /         25677 -r-xr-xr-x  742248  r
zeebsd   zsh         2873 ctty /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873   wd /        981004 drwxr-xr-x    1024  r
zeebsd   zsh         2873 root /             2 drwxr-xr-x    1024  r
zeebsd   zsh         2873    0 /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873    1 /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873    2 /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873   10 /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873   12 /         26530 -rw-r--r--  186808  r
zeebsd   zsh         2873   13 /         25750 -rw-r--r--  181912  r
zeebsd   zsh         2873   14 /         26524 -rw-r--r--  191280  r
zeebsd   zsh         2873   15 /         26514 -rw-r--r--  274808  r
zeebsd   zsh         2873   16 /         25947 -rw-r--r--  268544  r
zeebsd   zsh         2873   17 /         26170 -rw-r--r--  3872880  r
zeebsd   zsh         2873 mmap /         25677 -r-xr-xr-x  742248  r
zeebsd   zsh         2873 mmap /         25677 -r-xr-xr-x  742248  r
zeebsd   zsh         2873 mmap /        1043330 -r-xr-xr-x  136760  r
zeebsd   zsh         2873 mmap /         26524 -rw-r--r--  191280  r
zeebsd   zsh         2873 mmap /         25750 -rw-r--r--  181912  r
zeebsd   zsh         2873 mmap /         25947 -rw-r--r--  268544  r
zeebsd   zsh         2873 mmap /         26530 -rw-r--r--  186808  r
zeebsd   zsh         2873 mmap /         26514 -rw-r--r--  274808  r
zeebsd   zsh         2873 mmap /        2086676 -r--r--r--  375096  r
zeebsd   zsh         2873 mmap /        2086676 -r--r--r--  375096  r
zeebsd   zsh         2873 mmap /        2086707 -r--r--r--  192584  r
zeebsd   zsh         2873 mmap /        2086707 -r--r--r--  192584  r
zeebsd   zsh         2873 mmap /        2087142 -r--r--r--  1744432  r
zeebsd   zsh         2873 mmap /        2087142 -r--r--r--  1744432  r
zeebsd   zsh         2873 mmap /         25705 -r-xr-xr-x  338616  r
zeebsd   zsh         2873 mmap /         25705 -r-xr-xr-x  338616  r
zeebsd   zsh         2873 mmap /         25681 -r-xr-xr-x  148504  r
zeebsd   zsh         2873 mmap /         25681 -r-xr-xr-x  148504  r
zeebsd   zsh         2873 mmap /         25682 -r-xr-xr-x   66264  r
zeebsd   zsh         2873 mmap /         25682 -r-xr-xr-x   66264  r
zeebsd   zsh         2873 mmap /         25710 -r-xr-xr-x   29432  r
zeebsd   zsh         2873 mmap /         25710 -r-xr-xr-x   29432  r
zeebsd   zsh         2873 mmap /         25689 -r-xr-xr-x    8384  r
zeebsd   zsh         2873 mmap /         25689 -r-xr-xr-x    8384  r
zeebsd   zsh         2873 mmap /         25703 -r-xr-xr-x    8696  r
zeebsd   zsh         2873 mmap /         25703 -r-xr-xr-x    8696  r
zeebsd   zsh         2873 mmap /         25695 -r-xr-xr-x   42808  r
zeebsd   zsh         2873 mmap /         25695 -r-xr-xr-x   42808  r
zeebsd   zsh         2873 mmap /         25697 -r-xr-xr-x    8760  r
zeebsd   zsh         2873 mmap /         25697 -r-xr-xr-x    8760  r
zeebsd   zsh         2873 mmap /         25683 -r-xr-xr-x   60392  r
zeebsd   zsh         2873 mmap /         25683 -r-xr-xr-x   60392  r
zeebsd   zsh         2873 mmap /         26170 -rw-r--r--  3872880  r
zeebsd   gpg-agent    797 text /         23018 -r-xr-xr-x  360744  r
zeebsd   gpg-agent    797   wd /             2 drwxr-xr-x    1024  r
zeebsd   gpg-agent    797 root /             2 drwxr-xr-x    1024  r
zeebsd   gpg-agent    797    0 /dev         26 crw-rw-rw-    null  r
zeebsd   gpg-agent    797    1 /dev         26 crw-rw-rw-    null  w
zeebsd   gpg-agent    797    2 /dev         26 crw-rw-rw-    null  w
zeebsd   gpg-agent    797    3* local stream fffff80003b460f0
zeebsd   gpg-agent    797    4* local stream fffff80003b46000
zeebsd   gpg-agent    797    5* local stream fffff80003b45e10
zeebsd   gpg-agent    797    6* local stream fffff80003b45d20
zeebsd   gpg-agent    797    8 /dev          6 crw-r--r--  random  r
zeebsd   gpg-agent    797 mmap /         23018 -r-xr-xr-x  360744  r
zeebsd   gpg-agent    797 mmap /         23018 -r-xr-xr-x  360744  r
zeebsd   gpg-agent    797 mmap /        1043330 -r-xr-xr-x  136760  r
zeebsd   gpg-agent    797 mmap /        3795414 -rwxr-xr-x  1122888  r
zeebsd   gpg-agent    797 mmap /        3795414 -rwxr-xr-x  1122888  r
zeebsd   gpg-agent    797 mmap /        3795388 -rwxr-xr-x   93957  r
zeebsd   gpg-agent    797 mmap /        3795388 -rwxr-xr-x   93957  r
zeebsd   gpg-agent    797 mmap /        3796571 -rwxr-xr-x   78120  r
zeebsd   gpg-agent    797 mmap /        3796571 -rwxr-xr-x   78120  r
zeebsd   gpg-agent    797 mmap /        3796575 -rwxr-xr-x   17440  r
zeebsd   gpg-agent    797 mmap /        3796575 -rwxr-xr-x   17440  r
zeebsd   gpg-agent    797 mmap /        3795335 -rw-r--r--   51198  r
zeebsd   gpg-agent    797 mmap /        3795335 -rw-r--r--   51198  r
zeebsd   gpg-agent    797 mmap /        2087142 -r--r--r--  1744432  r
zeebsd   gpg-agent    797 mmap /        2087142 -r--r--r--  1744432  r
zeebsd   gpg-agent    797 mmap /        2086664 -r--r--r--  118352  r
zeebsd   gpg-agent    797 mmap /        2086664 -r--r--r--  118352  r
zeebsd   gpg-agent    797 mmap /        3781836 -r--r--r--    8936  r
zeebsd   gpg-agent    797 mmap /        3781836 -r--r--r--    8936  r
zeebsd   gpg-agent    797 mmap /        3781859 -r--r--r--    7136  r
zeebsd   gpg-agent    797 mmap /        3781859 -r--r--r--    7136  r
zeebsd   gpg-agent    797 mmap /        3781856 -r--r--r--    7216  r
zeebsd   gpg-agent    797 mmap /        3781856 -r--r--r--    7216  r
" fstat -m
}

atf_test_case n_flag
n_flag_head()
{
	atf_set "descr" "Verify the usage of option 'n'"
}

n_flag_body()
{
	atf_check -s exit:0 -o inline:"USER     CMD          PID   FD  DEV    INUM       MODE SZ|DV R/W
zeebsd   fstat      64956 text  0x50 3692920     100555  17920  r
zeebsd   fstat      64956 ctty 0x7100ff00     84      20620   0x54 rw
zeebsd   fstat      64956   wd  0x50 981004      40755   1024  r
zeebsd   fstat      64956 root  0x50      2      40755   1024  r
zeebsd   fstat      64956    0 0x7100ff00     84      20620   0x54 rw
zeebsd   fstat      64956    1* pipe fffff8003d5c9168 <-> fffff8003d5c9000      0 rw
zeebsd   fstat      64956    2* pipe fffff8003d5c9168 <-> fffff8003d5c9000      0 rw
zeebsd   fstat      64956    3  0x50 1633767     100644      0  w
zeebsd   fstat      64956    4  0x50 184303     100644  40960  r
zeebsd   generate_tests 63758 text  0x50 971668     100755 380796  r
zeebsd   generate_tests 63758 ctty 0x7100ff00     84      20620   0x54 rw
zeebsd   generate_tests 63758   wd  0x50 981004      40755   1024  r
zeebsd   generate_tests 63758 root  0x50      2      40755   1024  r
zeebsd   generate_tests 63758    0 0x7100ff00     84      20620   0x54 rw
zeebsd   generate_tests 63758    1 0x7100ff00     84      20620   0x54 rw
zeebsd   generate_tests 63758    2 0x7100ff00     84      20620   0x54 rw
zeebsd   generate_tests 63758    3  0x50 1633767     100644      0  w
zeebsd   generate_tests 63758    4* pipe fffff8003d5c9000 <-> fffff8003d5c9168      0 rw
zeebsd   make       63752 text  0x50 3693184     100555 741544  r
zeebsd   make       63752 ctty 0x7100ff00     84      20620   0x54 rw
zeebsd   make       63752   wd  0x50 981004      40755   1024  r
zeebsd   make       63752 root  0x50      2      40755   1024  r
zeebsd   make       63752    0 0x7100ff00     84      20620   0x54 rw
zeebsd   make       63752    1 0x7100ff00     84      20620   0x54 rw
zeebsd   make       63752    2 0x7100ff00     84      20620   0x54 rw
zeebsd   zsh        60029 text  0x50  25677     100555 742248  r
zeebsd   zsh        60029 ctty 0x7100ff00     84      20620   0x54 rw
zeebsd   zsh        60029   wd  0x50 981004      40755   1024  r
zeebsd   zsh        60029 root  0x50      2      40755   1024  r
zeebsd   zsh        60029    0 0x7100ff00     84      20620   0x54 rw
zeebsd   zsh        60029    1 0x7100ff00     84      20620   0x54 rw
zeebsd   zsh        60029    2 0x7100ff00     84      20620   0x54 rw
zeebsd   zsh        60029   10 0x7100ff00     84      20620   0x54 rw
zeebsd   zsh        60029   12  0x50  26530     100644 186808  r
zeebsd   zsh        60029   13  0x50  25750     100644 181912  r
zeebsd   zsh        60029   14  0x50  26524     100644 191280  r
zeebsd   zsh        60029   16  0x50  25947     100644 268544  r
zeebsd   ssh-agent  60021 text  0x50 3697714     100555  28608  r
zeebsd   ssh-agent  60021   wd  0x50      2      40755   1024  r
zeebsd   ssh-agent  60021 root  0x50      2      40755   1024  r
zeebsd   ssh-agent  60021    0 0x7100ff00     26      20666   0x1a rw
zeebsd   ssh-agent  60021    1 0x7100ff00     26      20666   0x1a rw
zeebsd   ssh-agent  60021    2 0x7100ff00     26      20666   0x1a rw
zeebsd   ssh-agent  60021    3  0x50 1633822     100644      1  w
zeebsd   ssh-agent  60021    4* local stream fffff80003b45870
zeebsd   zsh         2873 text  0x50  25677     100555 742248  r
zeebsd   zsh         2873 ctty 0x7100ff00     82      20620   0x52 rw
zeebsd   zsh         2873   wd  0x50 981004      40755   1024  r
zeebsd   zsh         2873 root  0x50      2      40755   1024  r
zeebsd   zsh         2873    0 0x7100ff00     82      20620   0x52 rw
zeebsd   zsh         2873    1 0x7100ff00     82      20620   0x52 rw
zeebsd   zsh         2873    2 0x7100ff00     82      20620   0x52 rw
zeebsd   zsh         2873   10 0x7100ff00     82      20620   0x52 rw
zeebsd   zsh         2873   12  0x50  26530     100644 186808  r
zeebsd   zsh         2873   13  0x50  25750     100644 181912  r
zeebsd   zsh         2873   14  0x50  26524     100644 191280  r
zeebsd   zsh         2873   15  0x50  26514     100644 274808  r
zeebsd   zsh         2873   16  0x50  25947     100644 268544  r
zeebsd   zsh         2873   17  0x50  26170     100644 3872880  r
zeebsd   gpg-agent    797 text  0x50  23018     100555 360744  r
zeebsd   gpg-agent    797   wd  0x50      2      40755   1024  r
zeebsd   gpg-agent    797 root  0x50      2      40755   1024  r
zeebsd   gpg-agent    797    0 0x7100ff00     26      20666   0x1a  r
zeebsd   gpg-agent    797    1 0x7100ff00     26      20666   0x1a  w
zeebsd   gpg-agent    797    2 0x7100ff00     26      20666   0x1a  w
zeebsd   gpg-agent    797    3* local stream fffff80003b460f0
zeebsd   gpg-agent    797    4* local stream fffff80003b46000
zeebsd   gpg-agent    797    5* local stream fffff80003b45e10
zeebsd   gpg-agent    797    6* local stream fffff80003b45d20
zeebsd   gpg-agent    797    8 0x7100ff00      6      20644    0x6  r
" fstat -n
}

atf_test_case v_flag
v_flag_head()
{
	atf_set "descr" "Verify the usage of option 'v'"
}

v_flag_body()
{
	atf_check -s exit:0 -o inline:"USER     CMD          PID   FD MOUNT      INUM MODE         SZ|DV R/W
zeebsd   fstat      64959 text /        3692920 -r-xr-xr-x   17920  r
zeebsd   fstat      64959 ctty /dev         84 crw--w----   pts/1 rw
zeebsd   fstat      64959   wd /        981004 drwxr-xr-x    1024  r
zeebsd   fstat      64959 root /             2 drwxr-xr-x    1024  r
zeebsd   fstat      64959    0 /dev         84 crw--w----   pts/1 rw
zeebsd   fstat      64959    1* pipe fffff8003d5c9168 <-> fffff8003d5c9000      0 rw
zeebsd   fstat      64959    2* pipe fffff8003d5c9168 <-> fffff8003d5c9000      0 rw
zeebsd   fstat      64959    3 -        1633767 -rw-r--r--       0  w
zeebsd   fstat      64959    4 /        184303 -rw-r--r--   40960  r
zeebsd   generate_tests 63758 text /        971668 -rwxr-xr-x  380796  r
zeebsd   generate_tests 63758 ctty /dev         84 crw--w----   pts/1 rw
zeebsd   generate_tests 63758   wd /        981004 drwxr-xr-x    1024  r
zeebsd   generate_tests 63758 root /             2 drwxr-xr-x    1024  r
zeebsd   generate_tests 63758    0 /dev         84 crw--w----   pts/1 rw
zeebsd   generate_tests 63758    1 /dev         84 crw--w----   pts/1 rw
zeebsd   generate_tests 63758    2 /dev         84 crw--w----   pts/1 rw
zeebsd   generate_tests 63758    3 -        1633767 -rw-r--r--       0  w
zeebsd   generate_tests 63758    4* pipe fffff8003d5c9000 <-> fffff8003d5c9168      0 rw
zeebsd   make       63752 text /        3693184 -r-xr-xr-x  741544  r
zeebsd   make       63752 ctty /dev         84 crw--w----   pts/1 rw
zeebsd   make       63752   wd /        981004 drwxr-xr-x    1024  r
zeebsd   make       63752 root /             2 drwxr-xr-x    1024  r
zeebsd   make       63752    0 /dev         84 crw--w----   pts/1 rw
zeebsd   make       63752    1 /dev         84 crw--w----   pts/1 rw
zeebsd   make       63752    2 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029 text /         25677 -r-xr-xr-x  742248  r
zeebsd   zsh        60029 ctty /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029   wd /        981004 drwxr-xr-x    1024  r
zeebsd   zsh        60029 root /             2 drwxr-xr-x    1024  r
zeebsd   zsh        60029    0 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029    1 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029    2 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029   10 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029   12 /         26530 -rw-r--r--  186808  r
zeebsd   zsh        60029   13 /         25750 -rw-r--r--  181912  r
zeebsd   zsh        60029   14 /         26524 -rw-r--r--  191280  r
zeebsd   zsh        60029   16 /         25947 -rw-r--r--  268544  r
zeebsd   ssh-agent  60021 text /        3697714 -r-xr-xr-x   28608  r
zeebsd   ssh-agent  60021   wd /             2 drwxr-xr-x    1024  r
zeebsd   ssh-agent  60021 root /             2 drwxr-xr-x    1024  r
zeebsd   ssh-agent  60021    0 /dev         26 crw-rw-rw-    null rw
zeebsd   ssh-agent  60021    1 /dev         26 crw-rw-rw-    null rw
zeebsd   ssh-agent  60021    2 /dev         26 crw-rw-rw-    null rw
zeebsd   ssh-agent  60021    3 -        1633822 -rw-r--r--       1  w
zeebsd   ssh-agent  60021    4* local stream fffff80003b45870
zeebsd   zsh         2873 text /         25677 -r-xr-xr-x  742248  r
zeebsd   zsh         2873 ctty /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873   wd /        981004 drwxr-xr-x    1024  r
zeebsd   zsh         2873 root /             2 drwxr-xr-x    1024  r
zeebsd   zsh         2873    0 /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873    1 /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873    2 /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873   10 /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873   12 /         26530 -rw-r--r--  186808  r
zeebsd   zsh         2873   13 /         25750 -rw-r--r--  181912  r
zeebsd   zsh         2873   14 /         26524 -rw-r--r--  191280  r
zeebsd   zsh         2873   15 /         26514 -rw-r--r--  274808  r
zeebsd   zsh         2873   16 /         25947 -rw-r--r--  268544  r
zeebsd   zsh         2873   17 /         26170 -rw-r--r--  3872880  r
zeebsd   gpg-agent    797 text /         23018 -r-xr-xr-x  360744  r
zeebsd   gpg-agent    797   wd /             2 drwxr-xr-x    1024  r
zeebsd   gpg-agent    797 root /             2 drwxr-xr-x    1024  r
zeebsd   gpg-agent    797    0 /dev         26 crw-rw-rw-    null  r
zeebsd   gpg-agent    797    1 /dev         26 crw-rw-rw-    null  w
zeebsd   gpg-agent    797    2 /dev         26 crw-rw-rw-    null  w
zeebsd   gpg-agent    797    3* local stream fffff80003b460f0
zeebsd   gpg-agent    797    4* local stream fffff80003b46000
zeebsd   gpg-agent    797    5* local stream fffff80003b45e10
zeebsd   gpg-agent    797    6* local stream fffff80003b45d20
zeebsd   gpg-agent    797    8 /dev          6 crw-r--r--  random  r
" fstat -v
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"fstat: option requires an argument -- M
usage: fstat [-fmnv] [-M core] [-N system] [-p pid] [-u user] [file ...]
" fstat -M
	atf_check -s not-exit:0 -e inline:"fstat: option requires an argument -- N
usage: fstat [-fmnv] [-M core] [-N system] [-p pid] [-u user] [file ...]
" fstat -N
	atf_check -s not-exit:0 -e inline:"fstat: option requires an argument -- p
usage: fstat [-fmnv] [-M core] [-N system] [-p pid] [-u user] [file ...]
" fstat -p
	atf_check -s not-exit:0 -e inline:"fstat: option requires an argument -- u
usage: fstat [-fmnv] [-M core] [-N system] [-p pid] [-u user] [file ...]
" fstat -u
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that fstat(1) executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:"USER     CMD          PID   FD MOUNT      INUM MODE         SZ|DV R/W
zeebsd   fstat      64960 text /        3692920 -r-xr-xr-x   17920  r
zeebsd   fstat      64960 ctty /dev         84 crw--w----   pts/1 rw
zeebsd   fstat      64960   wd /        981004 drwxr-xr-x    1024  r
zeebsd   fstat      64960 root /             2 drwxr-xr-x    1024  r
zeebsd   fstat      64960    0 /dev         84 crw--w----   pts/1 rw
zeebsd   fstat      64960    1* pipe fffff8003d5c9168 <-> fffff8003d5c9000      0 rw
zeebsd   fstat      64960    2* pipe fffff8003d5c9168 <-> fffff8003d5c9000      0 rw
zeebsd   fstat      64960    3 -        1633767 -rw-r--r--       0  w
zeebsd   fstat      64960    4 /        184303 -rw-r--r--   40960  r
zeebsd   generate_tests 63758 text /        971668 -rwxr-xr-x  380796  r
zeebsd   generate_tests 63758 ctty /dev         84 crw--w----   pts/1 rw
zeebsd   generate_tests 63758   wd /        981004 drwxr-xr-x    1024  r
zeebsd   generate_tests 63758 root /             2 drwxr-xr-x    1024  r
zeebsd   generate_tests 63758    0 /dev         84 crw--w----   pts/1 rw
zeebsd   generate_tests 63758    1 /dev         84 crw--w----   pts/1 rw
zeebsd   generate_tests 63758    2 /dev         84 crw--w----   pts/1 rw
zeebsd   generate_tests 63758    3 -        1633767 -rw-r--r--       0  w
zeebsd   generate_tests 63758    4* pipe fffff8003d5c9000 <-> fffff8003d5c9168      0 rw
zeebsd   make       63752 text /        3693184 -r-xr-xr-x  741544  r
zeebsd   make       63752 ctty /dev         84 crw--w----   pts/1 rw
zeebsd   make       63752   wd /        981004 drwxr-xr-x    1024  r
zeebsd   make       63752 root /             2 drwxr-xr-x    1024  r
zeebsd   make       63752    0 /dev         84 crw--w----   pts/1 rw
zeebsd   make       63752    1 /dev         84 crw--w----   pts/1 rw
zeebsd   make       63752    2 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029 text /         25677 -r-xr-xr-x  742248  r
zeebsd   zsh        60029 ctty /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029   wd /        981004 drwxr-xr-x    1024  r
zeebsd   zsh        60029 root /             2 drwxr-xr-x    1024  r
zeebsd   zsh        60029    0 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029    1 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029    2 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029   10 /dev         84 crw--w----   pts/1 rw
zeebsd   zsh        60029   12 /         26530 -rw-r--r--  186808  r
zeebsd   zsh        60029   13 /         25750 -rw-r--r--  181912  r
zeebsd   zsh        60029   14 /         26524 -rw-r--r--  191280  r
zeebsd   zsh        60029   16 /         25947 -rw-r--r--  268544  r
zeebsd   ssh-agent  60021 text /        3697714 -r-xr-xr-x   28608  r
zeebsd   ssh-agent  60021   wd /             2 drwxr-xr-x    1024  r
zeebsd   ssh-agent  60021 root /             2 drwxr-xr-x    1024  r
zeebsd   ssh-agent  60021    0 /dev         26 crw-rw-rw-    null rw
zeebsd   ssh-agent  60021    1 /dev         26 crw-rw-rw-    null rw
zeebsd   ssh-agent  60021    2 /dev         26 crw-rw-rw-    null rw
zeebsd   ssh-agent  60021    3 -        1633822 -rw-r--r--       1  w
zeebsd   ssh-agent  60021    4* local stream fffff80003b45870
zeebsd   zsh         2873 text /         25677 -r-xr-xr-x  742248  r
zeebsd   zsh         2873 ctty /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873   wd /        981004 drwxr-xr-x    1024  r
zeebsd   zsh         2873 root /             2 drwxr-xr-x    1024  r
zeebsd   zsh         2873    0 /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873    1 /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873    2 /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873   10 /dev         82 crw--w----   pts/0 rw
zeebsd   zsh         2873   12 /         26530 -rw-r--r--  186808  r
zeebsd   zsh         2873   13 /         25750 -rw-r--r--  181912  r
zeebsd   zsh         2873   14 /         26524 -rw-r--r--  191280  r
zeebsd   zsh         2873   15 /         26514 -rw-r--r--  274808  r
zeebsd   zsh         2873   16 /         25947 -rw-r--r--  268544  r
zeebsd   zsh         2873   17 /         26170 -rw-r--r--  3872880  r
zeebsd   gpg-agent    797 text /         23018 -r-xr-xr-x  360744  r
zeebsd   gpg-agent    797   wd /             2 drwxr-xr-x    1024  r
zeebsd   gpg-agent    797 root /             2 drwxr-xr-x    1024  r
zeebsd   gpg-agent    797    0 /dev         26 crw-rw-rw-    null  r
zeebsd   gpg-agent    797    1 /dev         26 crw-rw-rw-    null  w
zeebsd   gpg-agent    797    2 /dev         26 crw-rw-rw-    null  w
zeebsd   gpg-agent    797    3* local stream fffff80003b460f0
zeebsd   gpg-agent    797    4* local stream fffff80003b46000
zeebsd   gpg-agent    797    5* local stream fffff80003b45e10
zeebsd   gpg-agent    797    6* local stream fffff80003b45d20
zeebsd   gpg-agent    797    8 /dev          6 crw-r--r--  random  r
" fstat
}

atf_init_test_cases()
{
	atf_add_test_case f_flag
	atf_add_test_case m_flag
	atf_add_test_case n_flag
	atf_add_test_case v_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
