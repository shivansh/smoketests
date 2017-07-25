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

atf_test_case A_flag
A_flag_head()
{
	atf_set "descr" "Verify the usage of option 'A'"
}

A_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -A
}

atf_test_case B_flag
B_flag_head()
{
	atf_set "descr" "Verify the usage of option 'B'"
}

B_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -B
}

atf_test_case C_flag
C_flag_head()
{
	atf_set "descr" "Verify the usage of option 'C'"
}

C_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile		generate_test		opendir.cpp
a.out			generate_test.core	read_annotations.cpp
add_testcase.cpp	generate_test.cpp	read_annotations.h
add_testcase.h		generate_test.h		read_annotations.o
add_testcase.o		generate_test.o		run_tests.o
annotations		generated_tests		utils.cpp
cscope.out		groff			utils.h
failed			groff_list.1		utils.o
generate_annot.sh	license
' ls -C
}

atf_test_case F_flag
F_flag_head()
{
	atf_set "descr" "Verify the usage of option 'F'"
}

F_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out*
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations/
cscope.out
failed/
generate_annot.sh*
generate_test*
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests/
groff/
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -F
}

atf_test_case G_flag
G_flag_head()
{
	atf_set "descr" "Verify the usage of option 'G'"
}

G_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -G
}

atf_test_case H_flag
H_flag_head()
{
	atf_set "descr" "Verify the usage of option 'H'"
}

H_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -H
}

atf_test_case I_flag
I_flag_head()
{
	atf_set "descr" "Verify the usage of option 'I'"
}

I_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -I
}

atf_test_case L_flag
L_flag_head()
{
	atf_set "descr" "Verify the usage of option 'L'"
}

L_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -L
}

atf_test_case P_flag
P_flag_head()
{
	atf_set "descr" "Verify the usage of option 'P'"
}

P_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -P
}

atf_test_case R_flag
R_flag_head()
{
	atf_set "descr" "Verify the usage of option 'R'"
}

R_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o

./annotations:
date_test.annot

./failed:
addr2line.1
ar.1
c++filt.1
cat.1
dd.1
ed.1
getfacl.1
mandoc.1
md5.1
pax.1
setfacl.1
sh.1
soelim.1
strings.1
unvis.1
vis.1

./generated_tests:
_test.sh
addr2line_test.sh
apropos_test.sh
ar_test.sh
bmake_test.sh
c++filt_test.sh
chflags_test.sh
chio_test.sh
chmod_test.sh
cp_test.sh
date_test.sh
demandoc_test.sh
df_test.sh
domainname_test.sh
echo_test.sh
expr_test.sh
hostname_test.sh
kenv_test.sh
kill_test.sh
ldns-host_test.sh
ln_test.sh
ls_test.sh
make_test.sh
man.options_test.sh
man_test.sh
mandoc_test.sh
md5_test.sh
mkdir_test.sh
mv_test.sh
pax_test.sh
pkill_test.sh
ps_test.sh
pwait_test.sh
pwd_test.sh
ranlib_test.sh
rcp_test.sh
realpath_test.sh
recoverdisk_test.sh
rm_test.sh
rmdir_test.sh
rtld_test.sh
size_test.sh
sleep_test.sh
soelim_test.sh
stdbuf_test.sh
strings_test.sh
stty_test.sh
test_test.sh
unvis_test.sh
uuidgen_test.sh
vis_test.sh

./groff:
apply.1
apropos.1
as.1
asa.1
athrd.1
awk.1
basename.1
bc.1
biff.1
bmake.1
brandelf.1
bsdiff.1
bsnmpget.1
bspatch.1
bthost.1
btsockstat.1
bugpoint.1
c89.1
c99.1
calendar.1
cap_mkdb.1
catman.1
cdcontrol.1
chflags.1
chgrp.1
chio.1
chkey.1
chmod.1
chpass.1
ckdist.1
cksum.1
clang.1
cmp.1
col.1
colldef.1
colrm.1
column.1
comm.1
compress.1
cp.1
cpuset.1
crontab.1
crunchgen.1
crunchide.1
csplit.1
ctags.1
ctfconvert.1
ctfdump.1
ctfmerge.1
ctm.1
ctm_rmail.1
cu.1
cut.1
date.1
dc.1
demandoc.1
df.1
diff.1
domainname.1
dpv.1
dtc.1
du.1
echo.1
elf2aout.1
elfcopy.1
elfdump.1
enigma.1
env.1
ether_reflect.1
expand.1
expr.1
false.1
fdformat.1
fdread.1
fdwrite.1
fetch.1
fifolog.1
file2c.1
find.1
finger.1
fixwhite.1
fmt.1
fold.1
from.1
fstat.1
fsync.1
fuser.1
gcore.1
gcpp.1
gdb.1
gencat.1
getaddrinfo.1
getconf.1
getent.1
getopt.1
gprof.1
grep.1
groups.1
gzexe.1
gzip.1
head.1
hesinfo.1
hexdump.1
hostname.1
iconv.1
id.1
ident.1
indent.1
install.1
ipcrm.1
ipcs.1
join.1
jot.1
kbdcontrol.1
kbdmap.1
kdump.1
kenv.1
keylogin.1
keylogout.1
kgdb.1
kill.1
killall.1
ktrace.1
lam.1
last.1
lastcomm.1
ld.1
ldd.1
ldns-host.1
leave.1
lex.1
limits.1
lint.1
llc.1
lli.1
llvm-ar.1
llvm-as.1
llvm-bcanalyzer.1
llvm-cov.1
llvm-diff.1
llvm-dis.1
llvm-dwarfdump.1
llvm-extract.1
llvm-link.1
llvm-nm.1
llvm-profdata.1
llvm-symbolizer.1
llvm-tblgen.1
ln.1
locale.1
localedef.1
locate.1
lock.1
lockf.1
logger.1
login.1
logins.1
logname.1
look.1
lpq.1
lpr.1
lprm.1
lptest.1
ls.1
lsvfs.1
m4.1
mail.1
make.1
man.1
man.options.1
mcgrab.1
mcs.1
mctest.1
mesg.1
minigzip.1
ministat.1
mkcsmapper.1
mkdir.1
mkesdb.1
mkfifo.1
mkimg.1
mklocale.1
mkstr.1
mktemp.1
mptable.1
msgs.1
msh.1
mt.1
mv.1
ncal.1
netstat.1
newgrp.1
nfsstat.1
nice.1
nl.1
nm.1
nohup.1
numactl.1
objcopy.1
objdump.1
od.1
opt.1
passwd.1
paste.1
patch.1
pathchk.1
perror.1
pkill.1
plockstat.1
pr.1
printenv.1
printf.1
procstat.1
protect.1
ps.1
pwait.1
pwd.1
quota.1
ranlib.1
rcp.1
readelf.1
realpath.1
recoverdisk.1
resizewin.1
rev.1
revoke.1
rfcomm_sppd.1
rlogin.1
rm.1
rmdir.1
rpcgen.1
rs.1
rsh.1
rtld.1
rtprio.1
rup.1
ruptime.1
rusers.1
rwall.1
rwho.1
script.1
sdiff.1
sed.1
seq.1
setchannel.1
setfib.1
size.1
sleep.1
smbutil.1
sockstat.1
split.1
stat.1
stdbuf.1
strip.1
stty.1
su.1
systat.1
tabs.1
tail.1
talk.1
tcopy.1
tcpdump.1
tee.1
test.1
tftp.1
time.1
timeout.1
tip.1
top.local.1
touch.1
tput.1
tr.1
true.1
truncate.1
truss.1
tset.1
tsort.1
tty.1
uhsoctl.1
ul.1
uname.1
unifdef.1
uniq.1
units.1
unzip.1
uptime.1
usbhidaction.1
usbhidctl.1
users.1
uuencode.1
uuidgen.1
vgrind.1
vidcontrol.1
w.1
wall.1
wc.1
what.1
whereis.1
which.1
who.1
whoami.1
whois.1
write.1
xargs.1
xstr.1
yes.1
ypcat.1
ypmatch.1
ypwhich.1
zdiff.1
zforce.1
zmore.1
znew.1
' ls -R
}

atf_test_case S_flag
S_flag_head()
{
	atf_set "descr" "Verify the usage of option 'S'"
}

S_flag_body()
{
	atf_check -s exit:0 -o inline:'generate_test.core
cscope.out
generate_test.o
generate_test
utils.o
read_annotations.o
run_tests.o
add_testcase.o
a.out
generate_test.cpp
groff_list.1
groff
add_testcase.cpp
utils.cpp
generate_annot.sh
utils.h
read_annotations.cpp
add_testcase.h
generate_test.h
read_annotations.h
generated_tests
license
Makefile
annotations
failed
opendir.cpp
' ls -S
}

atf_test_case T_flag
T_flag_head()
{
	atf_set "descr" "Verify the usage of option 'T'"
}

T_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -T
}

atf_test_case U_flag
U_flag_head()
{
	atf_set "descr" "Verify the usage of option 'U'"
}

U_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -U
}

atf_test_case W_flag
W_flag_head()
{
	atf_set "descr" "Verify the usage of option 'W'"
}

W_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -W
}

atf_test_case Z_flag
Z_flag_head()
{
	atf_set "descr" "Verify the usage of option 'Z'"
}

Z_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -Z
}

atf_test_case a_flag
a_flag_head()
{
	atf_set "descr" "Verify the usage of option 'a'"
}

a_flag_body()
{
	atf_check -s exit:0 -o inline:'.
..
Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -a
}

atf_test_case b_flag
b_flag_head()
{
	atf_set "descr" "Verify the usage of option 'b'"
}

b_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -b
}

atf_test_case c_flag
c_flag_head()
{
	atf_set "descr" "Verify the usage of option 'c'"
}

c_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -c
}

atf_test_case d_flag
d_flag_head()
{
	atf_set "descr" "Verify the usage of option 'd'"
}

d_flag_body()
{
	atf_check -s exit:0 -o inline:'.
' ls -d
}

atf_test_case f_flag
f_flag_head()
{
	atf_set "descr" "Verify the usage of option 'f'"
}

f_flag_body()
{
	atf_check -s exit:0 -o inline:'.
..
Makefile
generate_test.cpp
generate_test.h
generated_tests
license
utils.cpp
utils.h
add_testcase.cpp
add_testcase.h
groff
utils.o
read_annotations.o
opendir.cpp
annotations
generate_annot.sh
cscope.out
run_tests.o
read_annotations.cpp
read_annotations.h
add_testcase.o
generate_test.o
groff_list.1
generate_test
generate_test.core
a.out
failed
' ls -f
}

atf_test_case g_flag
g_flag_head()
{
	atf_set "descr" "Verify the usage of option 'g'"
}

g_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -g
}

atf_test_case h_flag
h_flag_head()
{
	atf_set "descr" "Verify the usage of option 'h'"
}

h_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -h
}

atf_test_case i_flag
i_flag_head()
{
	atf_set "descr" "Verify the usage of option 'i'"
}

i_flag_body()
{
	atf_check -s exit:0 -o inline:' 982424 Makefile
 971680 a.out
 970759 add_testcase.cpp
 971653 add_testcase.h
 971687 add_testcase.o
1126953 annotations
 970743 cscope.out
1632523 failed
 971707 generate_annot.sh
 970507 generate_test
 982415 generate_test.core
 971671 generate_test.cpp
 970785 generate_test.h
 970478 generate_test.o
 981008 generated_tests
1126907 groff
 971665 groff_list.1
 981012 license
 970494 opendir.cpp
 971465 read_annotations.cpp
 971669 read_annotations.h
 971684 read_annotations.o
 971445 run_tests.o
 970710 utils.cpp
 970459 utils.h
 971677 utils.o
' ls -i
}

atf_test_case k_flag
k_flag_head()
{
	atf_set "descr" "Verify the usage of option 'k'"
}

k_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -k
}

atf_test_case l_flag
l_flag_head()
{
	atf_set "descr" "Verify the usage of option 'l'"
}

l_flag_body()
{
	atf_check -s exit:0 -o inline:'total 6184
-rw-r--r--  1 zeebsd  zeebsd      627 Jul 25 21:08 Makefile
-rwxr-xr-x  1 zeebsd  zeebsd    12608 Jul 25 15:52 a.out
-rw-r--r--  1 zeebsd  zeebsd     5444 Jul 23 18:19 add_testcase.cpp
-rw-r--r--  1 zeebsd  zeebsd     1822 Jul 23 14:53 add_testcase.h
-rw-r--r--  1 zeebsd  zeebsd    19728 Jul 25 17:33 add_testcase.o
drwxr-xr-x  2 zeebsd  zeebsd      512 Jul 25 21:08 annotations
-rw-r--r--  1 zeebsd  zeebsd   458548 Jul 22 20:10 cscope.out
drwxr-xr-x  2 zeebsd  zeebsd      512 Jul 25 21:09 failed
-rwxr-xr-x  1 zeebsd  zeebsd     2610 Jul 25 17:03 generate_annot.sh
-rwxr-xr-x  1 zeebsd  zeebsd   150968 Jul 25 21:05 generate_test
-rw-------  1 zeebsd  zeebsd  5029888 Jul 25 21:05 generate_test.core
-rw-r--r--  1 zeebsd  zeebsd     8500 Jul 25 21:05 generate_test.cpp
-rw-r--r--  1 zeebsd  zeebsd     1628 Jul 23 14:44 generate_test.h
-rw-r--r--  1 zeebsd  zeebsd   200040 Jul 25 21:05 generate_test.o
drwxr-xr-x  2 zeebsd  zeebsd     1536 Jul 25 21:08 generated_tests
drwxr-xr-x  2 zeebsd  zeebsd     6144 Jul 25 21:09 groff
-rw-r--r--  1 zeebsd  zeebsd     8128 Jul 25 15:02 groff_list.1
-rw-r--r--  1 zeebsd  zeebsd     1338 Jul 14 23:20 license
-rw-r--r--  1 zeebsd  zeebsd      352 Jul 25 15:52 opendir.cpp
-rw-r--r--  1 zeebsd  zeebsd     2183 Jul 25 13:52 read_annotations.cpp
-rw-r--r--  1 zeebsd  zeebsd     1562 Jul 23 14:58 read_annotations.h
-rw-r--r--  1 zeebsd  zeebsd    77496 Jul 25 17:33 read_annotations.o
-rw-r--r--  1 zeebsd  zeebsd    77368 Jul 23 03:34 run_tests.o
-rw-r--r--  1 zeebsd  zeebsd     4172 Jul 23 14:30 utils.cpp
-rw-r--r--  1 zeebsd  zeebsd     2607 Jul 23 14:29 utils.h
-rw-r--r--  1 zeebsd  zeebsd   121584 Jul 25 17:33 utils.o
' ls -l
}

atf_test_case m_flag
m_flag_head()
{
	atf_set "descr" "Verify the usage of option 'm'"
}

m_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile, a.out, add_testcase.cpp, add_testcase.h, add_testcase.o, 
annotations, cscope.out, failed, generate_annot.sh, generate_test, 
generate_test.core, generate_test.cpp, generate_test.h, generate_test.o, 
generated_tests, groff, groff_list.1, license, opendir.cpp, 
read_annotations.cpp, read_annotations.h, read_annotations.o, run_tests.o, 
utils.cpp, utils.h, utils.o
' ls -m
}

atf_test_case n_flag
n_flag_head()
{
	atf_set "descr" "Verify the usage of option 'n'"
}

n_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -n
}

atf_test_case o_flag
o_flag_head()
{
	atf_set "descr" "Verify the usage of option 'o'"
}

o_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -o
}

atf_test_case p_flag
p_flag_head()
{
	atf_set "descr" "Verify the usage of option 'p'"
}

p_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations/
cscope.out
failed/
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests/
groff/
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -p
}

atf_test_case q_flag
q_flag_head()
{
	atf_set "descr" "Verify the usage of option 'q'"
}

q_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -q
}

atf_test_case r_flag
r_flag_head()
{
	atf_set "descr" "Verify the usage of option 'r'"
}

r_flag_body()
{
	atf_check -s exit:0 -o inline:'utils.o
utils.h
utils.cpp
run_tests.o
read_annotations.o
read_annotations.h
read_annotations.cpp
opendir.cpp
license
groff_list.1
groff
generated_tests
generate_test.o
generate_test.h
generate_test.cpp
generate_test.core
generate_test
generate_annot.sh
failed
cscope.out
annotations
add_testcase.o
add_testcase.h
add_testcase.cpp
a.out
Makefile
' ls -r
}

atf_test_case s_flag
s_flag_head()
{
	atf_set "descr" "Verify the usage of option 's'"
}

s_flag_body()
{
	atf_check -s exit:0 -o inline:'   4 Makefile
  16 a.out
   8 add_testcase.cpp
   4 add_testcase.h
  20 add_testcase.o
   4 annotations
 480 cscope.out
   4 failed
   4 generate_annot.sh
 148 generate_test
4960 generate_test.core
  12 generate_test.cpp
   4 generate_test.h
 196 generate_test.o
   4 generated_tests
   8 groff
   8 groff_list.1
   4 license
   4 opendir.cpp
   4 read_annotations.cpp
   4 read_annotations.h
  76 read_annotations.o
  76 run_tests.o
   8 utils.cpp
   4 utils.h
 120 utils.o
' ls -s
}

atf_test_case t_flag
t_flag_head()
{
	atf_set "descr" "Verify the usage of option 't'"
}

t_flag_body()
{
	atf_check -s exit:0 -o inline:'groff
failed
generated_tests
Makefile
annotations
generate_test
generate_test.o
generate_test.cpp
generate_test.core
add_testcase.o
read_annotations.o
utils.o
generate_annot.sh
a.out
opendir.cpp
groff_list.1
read_annotations.cpp
add_testcase.cpp
read_annotations.h
add_testcase.h
generate_test.h
utils.cpp
utils.h
run_tests.o
cscope.out
license
' ls -t
}

atf_test_case u_flag
u_flag_head()
{
	atf_set "descr" "Verify the usage of option 'u'"
}

u_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -u
}

atf_test_case w_flag
w_flag_head()
{
	atf_set "descr" "Verify the usage of option 'w'"
}

w_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -w
}

atf_test_case x_flag
x_flag_head()
{
	atf_set "descr" "Verify the usage of option 'x'"
}

x_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile		a.out			add_testcase.cpp
add_testcase.h		add_testcase.o		annotations
cscope.out		failed			generate_annot.sh
generate_test		generate_test.core	generate_test.cpp
generate_test.h		generate_test.o		generated_tests
groff			groff_list.1		license
opendir.cpp		read_annotations.cpp	read_annotations.h
read_annotations.o	run_tests.o		utils.cpp
utils.h			utils.o
' ls -x
}

atf_test_case y_flag
y_flag_head()
{
	atf_set "descr" "Verify the usage of option 'y'"
}

y_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -y
}

atf_test_case 1_flag
1_flag_head()
{
	atf_set "descr" "Verify the usage of option '1'"
}

1_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -1
}

atf_test_case ,_flag
,_flag_head()
{
	atf_set "descr" "Verify the usage of option ','"
}

,_flag_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls -,
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
	atf_set "descr" "Verify that ls executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:'Makefile
a.out
add_testcase.cpp
add_testcase.h
add_testcase.o
annotations
cscope.out
failed
generate_annot.sh
generate_test
generate_test.core
generate_test.cpp
generate_test.h
generate_test.o
generated_tests
groff
groff_list.1
license
opendir.cpp
read_annotations.cpp
read_annotations.h
read_annotations.o
run_tests.o
utils.cpp
utils.h
utils.o
' ls
}

atf_init_test_cases()
{
	atf_add_test_case A_flag
	atf_add_test_case B_flag
	atf_add_test_case C_flag
	atf_add_test_case F_flag
	atf_add_test_case G_flag
	atf_add_test_case H_flag
	atf_add_test_case I_flag
	atf_add_test_case L_flag
	atf_add_test_case P_flag
	atf_add_test_case R_flag
	atf_add_test_case S_flag
	atf_add_test_case T_flag
	atf_add_test_case U_flag
	atf_add_test_case W_flag
	atf_add_test_case Z_flag
	atf_add_test_case a_flag
	atf_add_test_case b_flag
	atf_add_test_case c_flag
	atf_add_test_case d_flag
	atf_add_test_case f_flag
	atf_add_test_case g_flag
	atf_add_test_case h_flag
	atf_add_test_case i_flag
	atf_add_test_case k_flag
	atf_add_test_case l_flag
	atf_add_test_case m_flag
	atf_add_test_case n_flag
	atf_add_test_case o_flag
	atf_add_test_case p_flag
	atf_add_test_case q_flag
	atf_add_test_case r_flag
	atf_add_test_case s_flag
	atf_add_test_case t_flag
	atf_add_test_case u_flag
	atf_add_test_case w_flag
	atf_add_test_case x_flag
	atf_add_test_case y_flag
	atf_add_test_case 1_flag
	atf_add_test_case ,_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
