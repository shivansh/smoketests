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
	atf_check -s exit:0 -o inline:"472	./generated_tests
2066	./groff
1	./annotations
208	./failed
4888	.
" du -A
}

atf_test_case H_flag
H_flag_head()
{
	atf_set "descr" "Verify the usage of option 'H'"
}

H_flag_body()
{
	atf_check -s exit:0 -o inline:"604	./generated_tests
2468	./groff
8	./annotations
264	./failed
5592	.
" du -H
}

atf_test_case L_flag
L_flag_head()
{
	atf_set "descr" "Verify the usage of option 'L'"
}

L_flag_body()
{
	atf_check -s exit:0 -o inline:"604	./generated_tests
2468	./groff
8	./annotations
264	./failed
5592	.
" du -L
}

atf_test_case P_flag
P_flag_head()
{
	atf_set "descr" "Verify the usage of option 'P'"
}

P_flag_body()
{
	atf_check -s exit:0 -o inline:"604	./generated_tests
2468	./groff
8	./annotations
264	./failed
5592	.
" du -P
}

atf_test_case a_flag
a_flag_head()
{
	atf_set "descr" "Verify the usage of option 'a'"
}

a_flag_body()
{
	atf_check -s exit:0 -o inline:"4	./Makefile
8	./add_testcase.cpp
4	./generate_test.h
4	./generated_tests/_test.sh
4	./generated_tests/ln_test.sh
4	./generated_tests/date_test.sh
4	./generated_tests/._test.sh
4	./generated_tests/stdbuf_test.sh
4	./generated_tests/rtld_test.sh
4	./generated_tests/cp_test.sh
4	./generated_tests/rm_test.sh
8	./generated_tests/stty_test.sh
4	./generated_tests/tset_test.sh
4	./generated_tests/chflags_test.sh
4	./generated_tests/domainname_test.sh
4	./generated_tests/pwait_test.sh
4	./generated_tests/hostname_test.sh
4	./generated_tests/realpath_test.sh
4	./generated_tests/sleep_test.sh
4	./generated_tests/kill_test.sh
4	./generated_tests/uuidgen_test.sh
4	./generated_tests/expr_test.sh
16	./generated_tests/ps_test.sh
4	./generated_tests/mv_test.sh
4	./generated_tests/echo_test.sh
4	./generated_tests/rmdir_test.sh
8	./generated_tests/test_test.sh
4	./generated_tests/chmod_test.sh
4	./generated_tests/mkdir_test.sh
8	./generated_tests/kenv_test.sh
4	./generated_tests/pwd_test.sh
4	./generated_tests/rcp_test.sh
8	./generated_tests/df_test.sh
4	./generated_tests/recoverdisk_test.sh
4	./generated_tests/bmake_test.sh
8	./generated_tests/make_test.sh
4	./generated_tests/ldns-host_test.sh
4	./generated_tests/apropos_test.sh
4	./generated_tests/demandoc_test.sh
8	./generated_tests/man_test.sh
8	./generated_tests/man.options_test.sh
8	./generated_tests/ranlib_test.sh
28	./generated_tests/size_test.sh
8	./generated_tests/elfcopy_test.sh
4	./generated_tests/mcs_test.sh
108	./generated_tests/strip_test.sh
4	./generated_tests/elfdump_test.sh
60	./generated_tests/nm_test.sh
64	./generated_tests/readelf_test.sh
4	./generated_tests/brandelf_test.sh
4	./generated_tests/perror_test.sh
4	./generated_tests/find_test.sh
4	./generated_tests/tty_test.sh
4	./generated_tests/printf_test.sh
4	./generated_tests/apply_test.sh
4	./generated_tests/timeout_test.sh
4	./generated_tests/awk_test.sh
4	./generated_tests/lli_test.sh
4	./generated_tests/clang_test.sh
4	./generated_tests/bugpoint_test.sh
4	./generated_tests/llc_test.sh
4	./generated_tests/llvm-profdata_test.sh
4	./generated_tests/llvm-nm_test.sh
4	./generated_tests/llvm-symbolizer_test.sh
4	./generated_tests/llvm-dis_test.sh
4	./generated_tests/llvm-as_test.sh
4	./generated_tests/llvm-diff_test.sh
4	./generated_tests/llvm-bcanalyzer_test.sh
4	./generated_tests/llvm-extract_test.sh
4	./generated_tests/llvm-link_test.sh
4	./generated_tests/llvm-dwarfdump_test.sh
4	./generated_tests/opt_test.sh
4	./generated_tests/llvm-cov_test.sh
4	./generated_tests/llvm-ar_test.sh
4	./generated_tests/elf2aout_test.sh
8	./generated_tests/uname_test.sh
4	./generated_tests/unzip_test.sh
4	./generated_tests/gcore_test.sh
4	./generated_tests/tput_test.sh
0	./generated_tests/du_test.sh
604	./generated_tests
4	./license
4	./read_annotations.cpp
4	./add_testcase.h
12	./generate_test.cpp
8	./groff/ln.1
12	./groff/date.1
4	./groff/stdbuf.1
12	./groff/rtld.1
8	./groff/cp.1
8	./groff/rm.1
16	./groff/stty.1
12	./groff/tset.1
8	./groff/chflags.1
4	./groff/domainname.1
4	./groff/pwait.1
4	./groff/hostname.1
4	./groff/realpath.1
4	./groff/sleep.1
4	./groff/kill.1
4	./groff/uuidgen.1
12	./groff/expr.1
24	./groff/ps.1
4	./groff/echo.1
4	./groff/rmdir.1
8	./groff/test.1
12	./groff/chmod.1
8	./groff/mv.1
4	./groff/mkdir.1
4	./groff/kenv.1
4	./groff/pwd.1
4	./groff/rcp.1
8	./groff/df.1
8	./groff/recoverdisk.1
64	./groff/bmake.1
64	./groff/make.1
8	./groff/ldns-host.1
12	./groff/apropos.1
4	./groff/demandoc.1
12	./groff/man.1
24	./groff/man.options.1
4	./groff/ranlib.1
8	./groff/size.1
12	./groff/elfcopy.1
4	./groff/mcs.1
8	./groff/strip.1
4	./groff/elfdump.1
8	./groff/nm.1
8	./groff/readelf.1
4	./groff/brandelf.1
4	./groff/perror.1
28	./groff/find.1
4	./groff/tty.1
12	./groff/printf.1
4	./groff/apply.1
4	./groff/timeout.1
20	./groff/awk.1
8	./groff/lli.1
20	./groff/clang.1
12	./groff/bugpoint.1
8	./groff/llc.1
8	./groff/llvm-profdata.1
8	./groff/llvm-nm.1
4	./groff/llvm-symbolizer.1
4	./groff/llvm-dis.1
4	./groff/llvm-diff.1
12	./groff/llvm-bcanalyzer.1
4	./groff/llvm-extract.1
4	./groff/llvm-link.1
4	./groff/llvm-dwarfdump.1
4	./groff/llvm-as.1
8	./groff/opt.1
12	./groff/llvm-cov.1
16	./groff/llvm-ar.1
4	./groff/elf2aout.1
4	./groff/uname.1
8	./groff/unzip.1
4	./groff/gcore.1
4	./groff/tput.1
8	./groff/du.1
4	./groff/basename.1
4	./groff/seq.1
8	./groff/fstat.1
8	./groff/fuser.1
24	./groff/mt.1
12	./groff/dpv.1
4	./groff/mkfifo.1
8	./groff/mktemp.1
20	./groff/grep.1
4	./groff/top.local.1
8	./groff/gencat.1
16	./groff/procstat.1
4	./groff/logins.1
8	./groff/rsh.1
4	./groff/catman.1
4	./groff/chkey.1
4	./groff/mkstr.1
4	./groff/which.1
8	./groff/nfsstat.1
8	./groff/sockstat.1
12	./groff/env.1
8	./groff/join.1
8	./groff/c89.1
4	./groff/uptime.1
4	./groff/from.1
4	./groff/rwall.1
16	./groff/stat.1
4	./groff/tcopy.1
4	./groff/keylogout.1
4	./groff/biff.1
4	./groff/truncate.1
8	./groff/uuencode.1
4	./groff/bspatch.1
4	./groff/bsdiff.1
4	./groff/protect.1
4	./groff/locale.1
8	./groff/csplit.1
8	./groff/touch.1
8	./groff/c99.1
4	./groff/resizewin.1
4	./groff/gzexe.1
4	./groff/zdiff.1
4	./groff/zforce.1
4	./groff/znew.1
4	./groff/ipcrm.1
4	./groff/rwho.1
8	./groff/rfcomm_sppd.1
4	./groff/btsockstat.1
4	./groff/bthost.1
8	./groff/paste.1
8	./groff/locate.1
4	./groff/nohup.1
8	./groff/killall.1
4	./groff/ypcat.1
4	./groff/printenv.1
4	./groff/asa.1
8	./groff/uniq.1
8	./groff/ktrace.1
4	./groff/revoke.1
8	./groff/getaddrinfo.1
4	./groff/false.1
8	./groff/usbhidctl.1
8	./groff/jot.1
12	./groff/localedef.1
20	./groff/patch.1
12	./groff/tr.1
4	./groff/users.1
4	./groff/tee.1
8	./groff/hesinfo.1
32	./groff/mail.1
8	./groff/lastcomm.1
4	./groff/rusers.1
8	./groff/rs.1
8	./groff/mklocale.1
4	./groff/fold.1
8	./groff/rlogin.1
8	./groff/last.1
16	./groff/diff.1
12	./groff/dtc.1
8	./groff/ministat.1
12	./groff/mkimg.1
4	./groff/sdiff.1
4	./groff/what.1
4	./groff/time.1
8	./groff/ncal.1
12	./groff/limits.1
4	./groff/ldd.1
8	./groff/tail.1
4	./groff/getent.1
8	./groff/who.1
8	./groff/whois.1
20	./groff/netstat.1
4	./groff/nice.1
4	./groff/look.1
4	./groff/minigzip.1
4	./groff/cmp.1
8	./groff/script.1
4	./groff/ypmatch.1
4	./groff/setchannel.1
12	./groff/install.1
12	./groff/fetch.1
4	./groff/cap_mkdb.1
4	./groff/tabs.1
8	./groff/ipcs.1
4	./groff/fsync.1
4	./groff/tsort.1
4	./groff/comm.1
8	./groff/wc.1
4	./groff/truss.1
4	./groff/ruptime.1
4	./groff/true.1
8	./groff/ctags.1
12	./groff/hexdump.1
8	./groff/od.1
8	./groff/tftp.1
8	./groff/passwd.1
4	./groff/ypwhich.1
4	./groff/keylogin.1
12	./groff/gprof.1
8	./groff/whereis.1
8	./groff/numactl.1
8	./groff/finger.1
4	./groff/write.1
16	./groff/dc.1
8	./groff/cpuset.1
12	./groff/calendar.1
8	./groff/xstr.1
4	./groff/enigma.1
8	./groff/units.1
8	./groff/talk.1
104	./groff/lex.1
8	./groff/cut.1
12	./groff/xargs.1
8	./groff/getconf.1
8	./groff/lockf.1
8	./groff/msgs.1
4	./groff/pathchk.1
8	./groff/login.1
4	./groff/groups.1
8	./groff/id.1
4	./groff/whoami.1
4	./groff/getopt.1
4	./groff/lsvfs.1
8	./groff/kdump.1
8	./groff/nl.1
16	./groff/lint.1
8	./groff/cksum.1
8	./groff/quota.1
4	./groff/logname.1
4	./groff/lock.1
4	./groff/fdwrite.1
8	./groff/chgrp.1
8	./groff/cdcontrol.1
4	./groff/kbdmap.1
4	./groff/crunchide.1
16	./groff/crunchgen.1
4	./groff/ckdist.1
4	./groff/uhsoctl.1
8	./groff/rtprio.1
16	./groff/ctm_rmail.1
8	./groff/ctm.1
4	./groff/crontab.1
16	./groff/vidcontrol.1
8	./groff/lpr.1
4	./groff/lptest.1
8	./groff/lpq.1
8	./groff/lprm.1
8	./groff/kbdcontrol.1
8	./groff/fdread.1
4	./groff/mptable.1
8	./groff/fifolog.1
16	./groff/bsnmpget.1
8	./groff/fdformat.1
4	./groff/setfib.1
64	./groff/tcpdump.1
4	./groff/ctfconvert.1
4	./groff/ctfmerge.1
4	./groff/ctfdump.1
4	./groff/plockstat.1
8	./groff/athrd.1
4	./groff/fixwhite.1
4	./groff/ether_reflect.1
4	./groff/mcgrab.1
4	./groff/mctest.1
8	./groff/msh.1
40	./groff/gcpp.1
8	./groff/gdb.1
4	./groff/kgdb.1
40	./groff/objcopy.1
96	./groff/ld.1
24	./groff/objdump.1
44	./groff/as.1
2468	./groff
4	./read_annotations.h
4	./utils.h
4	./annotations/date_test.annot
8	./annotations
4	./generate_annot.sh
8	./utils.cpp
68	./read_annotations.o
96	./utils.o
372	./generate_tests
44	./add_testcase.o
4	./Makefile.Linux
1088	./cscope.out
512	./generate_test.o
4	./failed/expand.1
8	./failed/w.1
8	./failed/compress.1
12	./failed/rpcgen.1
4	./failed/llvm-tblgen.1
4	./failed/iconv.1
4	./failed/wall.1
4	./failed/head.1
8	./failed/colldef.1
16	./failed/chpass.1
4	./failed/file2c.1
4	./failed/rev.1
8	./failed/col.1
12	./failed/pr.1
4	./failed/column.1
16	./failed/indent.1
4	./failed/ident.1
4	./failed/yes.1
4	./failed/leave.1
8	./failed/fmt.1
4	./failed/ul.1
4	./failed/colrm.1
8	./failed/vgrind.1
16	./failed/m4.1
12	./failed/unifdef.1
8	./failed/su.1
12	./failed/bc.1
8	./failed/gzip.1
4	./failed/zmore.1
8	./failed/logger.1
4	./failed/mkcsmapper.1
4	./failed/newgrp.1
20	./failed/sed.1
8	./failed/split.1
264	./failed
5592	.
" du -a
}

atf_test_case c_flag
c_flag_head()
{
	atf_set "descr" "Verify the usage of option 'c'"
}

c_flag_body()
{
	atf_check -s exit:0 -o inline:"604	./generated_tests
2468	./groff
8	./annotations
264	./failed
5592	.
5592	total
" du -c
}

atf_test_case g_flag
g_flag_head()
{
	atf_set "descr" "Verify the usage of option 'g'"
}

g_flag_body()
{
	atf_check -s exit:0 -o inline:"1	./generated_tests
1	./groff
1	./annotations
1	./failed
1	.
" du -g
}

atf_test_case h_flag
h_flag_head()
{
	atf_set "descr" "Verify the usage of option 'h'"
}

h_flag_body()
{
	atf_check -s exit:0 -o inline:"604K	./generated_tests
2.4M	./groff
8.0K	./annotations
264K	./failed
5.5M	.
" du -h
}

atf_test_case k_flag
k_flag_head()
{
	atf_set "descr" "Verify the usage of option 'k'"
}

k_flag_body()
{
	atf_check -s exit:0 -o inline:"604	./generated_tests
2468	./groff
8	./annotations
264	./failed
5592	.
" du -k
}

atf_test_case l_flag
l_flag_head()
{
	atf_set "descr" "Verify the usage of option 'l'"
}

l_flag_body()
{
	atf_check -s exit:0 -o inline:"604	./generated_tests
2468	./groff
8	./annotations
264	./failed
5592	.
" du -l
}

atf_test_case m_flag
m_flag_head()
{
	atf_set "descr" "Verify the usage of option 'm'"
}

m_flag_body()
{
	atf_check -s exit:0 -o inline:"1	./generated_tests
3	./groff
1	./annotations
1	./failed
6	.
" du -m
}

atf_test_case n_flag
n_flag_head()
{
	atf_set "descr" "Verify the usage of option 'n'"
}

n_flag_body()
{
	atf_check -s exit:0 -o inline:"604	./generated_tests
2468	./groff
8	./annotations
264	./failed
5592	.
" du -n
}

atf_test_case r_flag
r_flag_head()
{
	atf_set "descr" "Verify the usage of option 'r'"
}

r_flag_body()
{
	atf_check -s exit:0 -o inline:"604	./generated_tests
2468	./groff
8	./annotations
264	./failed
5592	.
" du -r
}

atf_test_case s_flag
s_flag_head()
{
	atf_set "descr" "Verify the usage of option 's'"
}

s_flag_body()
{
	atf_check -s exit:0 -o inline:"5592	.
" du -s
}

atf_test_case x_flag
x_flag_head()
{
	atf_set "descr" "Verify the usage of option 'x'"
}

x_flag_body()
{
	atf_check -s exit:0 -o inline:"604	./generated_tests
2468	./groff
8	./annotations
264	./failed
5592	.
" du -x
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"du: option requires an argument -- B
usage: du [-Aclnx] [-H | -L | -P] [-g | -h | -k | -m] [-a | -s | -d depth] [-B blocksize] [-I mask] [-t threshold] [file ...]
" du -B
	atf_check -s not-exit:0 -e inline:"du: option requires an argument -- I
usage: du [-Aclnx] [-H | -L | -P] [-g | -h | -k | -m] [-a | -s | -d depth] [-B blocksize] [-I mask] [-t threshold] [file ...]
" du -I
	atf_check -s not-exit:0 -e inline:"du: option requires an argument -- d
usage: du [-Aclnx] [-H | -L | -P] [-g | -h | -k | -m] [-a | -s | -d depth] [-B blocksize] [-I mask] [-t threshold] [file ...]
" du -d
	atf_check -s not-exit:0 -e inline:"du: option requires an argument -- t
usage: du [-Aclnx] [-H | -L | -P] [-g | -h | -k | -m] [-a | -s | -d depth] [-B blocksize] [-I mask] [-t threshold] [file ...]
" du -t
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that du(1) executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:"604	./generated_tests
2468	./groff
8	./annotations
264	./failed
5592	.
" du
}

atf_init_test_cases()
{
	atf_add_test_case A_flag
	atf_add_test_case H_flag
	atf_add_test_case L_flag
	atf_add_test_case P_flag
	atf_add_test_case a_flag
	atf_add_test_case c_flag
	atf_add_test_case g_flag
	atf_add_test_case h_flag
	atf_add_test_case k_flag
	atf_add_test_case l_flag
	atf_add_test_case m_flag
	atf_add_test_case n_flag
	atf_add_test_case r_flag
	atf_add_test_case s_flag
	atf_add_test_case x_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
