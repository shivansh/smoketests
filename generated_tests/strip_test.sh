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

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that strip fails and generates a valid output when no arguments are supplied"
}

no_arguments_body()
{
	atf_check -s exit:1 -e inline:'Usage: strip <option(s)> in-file(s)
 Removes symbols and sections from files
 The options are:
  -I --input-target=<bfdname>      Assume input file is in format <bfdname>
  -O --output-target=<bfdname>     Create an output file in format <bfdname>
  -F --target=<bfdname>            Set both input and output format to <bfdname>
  -p --preserve-dates              Copy modified/access timestamps to the output
  -D --enable-deterministic-archives
                                   Produce deterministic output when stripping archives (default)
  -U --disable-deterministic-archives
                                   Disable -D behavior
  -R --remove-section=<name>       Also remove section <name> from the output
     --remove-relocations <name>   Remove relocations from section <name>
  -s --strip-all                   Remove all symbol and relocation information
  -g -S -d --strip-debug           Remove all debugging symbols & sections
     --strip-dwo                   Remove all DWO sections
     --strip-unneeded              Remove all symbols not needed by relocations
     --only-keep-debug             Strip everything but the debug information
  -N --strip-symbol=<name>         Do not copy symbol <name>
  -K --keep-symbol=<name>          Do not strip symbol <name>
     --keep-file-symbols           Do not strip file symbol(s)
  -w --wildcard                    Permit wildcard in symbol comparison
  -x --discard-all                 Remove all non-global symbols
  -X --discard-locals              Remove any compiler-generated symbols
  -v --verbose                     List all object files modified
  -V --version                     Display this program's version number
  -h --help                        Display this output
     --info                        List object formats & architectures supported
  -o <file>                        Place stripped output into <file>
strip: supported targets: elf64-x86-64-freebsd elf32-bigaarch64 elf32-littleaarch64 elf64-bigaarch64 elf64-bigaarch64-cloudabi elf64-littleaarch64 elf64-littleaarch64-cloudabi mach-o-arm64 ecoff-littlealpha elf64-alpha elf64-alpha-freebsd nlm32-alpha vms-alpha vms-libtxt elf32-am33lin a.out-zero-big demo64 a.out.adobe elf32-bigarc elf32-littlearc a.out-arm-netbsd coff-arm-big coff-arm-little elf32-bigarm elf32-littlearm elf32-bigarm-symbian elf32-littlearm-symbian elf32-bigarm-vxworks elf32-littlearm-vxworks mach-o-arm pe-arm-big pe-arm-little epoc-pe-arm-big epoc-pe-arm-little pe-arm-wince-big pe-arm-wince-little pei-arm-big pei-arm-little epoc-pei-arm-big epoc-pei-arm-little pei-arm-wince-big pei-arm-wince-little elf32-avr elf32-bfin elf32-bfinfdpic b.out.big b.out.little elf32-cr16 elf32-cr16c a.out-cris elf32-cris elf32-us-cris elf32-crx elf32-d10v elf32-d30v elf32-dlx elf32-big elf32-little elf64-big elf64-little elf32-epiphany elf32-fr30 elf32-frv elf32-frvfdpic coff-h8300 elf32-h8300 elf32-h8300-linux coff-h8500 elf32-hppa elf32-hppa-linux elf32-hppa-netbsd elf64-hppa elf64-hppa-linux som elf32-i370 a.out-i386 a.out-i386-bsd a.out-i386-freebsd a.out-i386-lynx a.out-i386-netbsd i386os9k coff-i386 coff-go32 coff-go32-exe coff-i386-lynx elf32-i386 elf32-i386-freebsd elf32-i386-nacl elf32-i386-sol2 elf32-i386-vxworks mach-o-i386 msdos nlm32-i386 pe-i386 pei-i386 elf32-iamcu coff-i860 elf32-i860 elf32-i860-little elf32-i960 elf32-ia64-hpux-big elf64-ia64-big elf64-ia64-little elf64-ia64-hpux-big elf64-ia64-vms pei-ia64 coff-Intel-big coff-Intel-little ieee elf32-ip2k elf32-iq2000 elf64-k1om elf64-k1om-freebsd elf64-l1om elf64-l1om-freebsd elf32-lm32 elf32-m32c elf32-m32r elf32-m32rle elf32-m32r-linux elf32-m32rle-linux elf32-m68hc11 elf32-m68hc12 a.out-hp300hpux a.out-m68k-netbsd a.out-newsos3 coff-m68k coff-m68k-sysv coff-m68k-un elf32-m68k versados a.out-m88k-mach3 a.out-m88k-openbsd coff-m88kbcs elf32-m88k mach-o-be mach-o-le mach-o-fat elf32-mcore-big elf32-mcore-little pe-mcore-big pe-mcore-little pei-mcore-big pei-mcore-little elf32-mep elf32-metag elf32-microblaze a.out-mips-little ecoff-bigmips ecoff-littlemips ecoff-biglittlemips elf32-bigmips elf32-littlemips elf32-nbigmips elf32-nlittlemips elf32-ntradbigmips elf32-ntradlittlemips elf32-ntradbigmips-freebsd elf32-ntradlittlemips-freebsd elf32-tradbigmips elf32-tradlittlemips elf32-tradbigmips-freebsd elf32-tradlittlemips-freebsd elf32-bigmips-vxworks elf32-littlemips-vxworks elf64-bigmips elf64-littlemips elf64-tradbigmips elf64-tradlittlemips elf64-tradbigmips-freebsd elf64-tradlittlemips-freebsd pe-mips pei-mips elf64-mmix mmo elf32-mn10200 elf32-mn10300 elf32-bigmoxie elf32-littlemoxie elf32-msp430 elf32-msp430 elf32-mt elf32-nds32be elf32-nds32le elf32-nds32be-linux elf32-nds32le-linux elf32-bignios2 elf32-littlenios2 a.out-pc532-mach a.out-ns32k-netbsd elf32-or1k a.out-pdp11 pef pef-xlib elf32-pj elf32-pjl plugin ppcboot elf32-powerpc elf32-powerpcle elf32-powerpc-freebsd elf32-powerpc-vxworks elf64-powerpc elf64-powerpcle elf64-powerpc-freebsd nlm32-powerpc pe-powerpc pe-powerpcle pei-powerpc pei-powerpcle elf32-littleriscv elf64-littleriscv elf32-rl78 aixcoff64-rs6000 aix5coff64-rs6000 aixcoff-rs6000 elf32-rx-be elf32-rx-be-ns elf32-rx-le elf32-s390 elf64-s390 elf32-bigscore elf32-littlescore elf32-sh64 elf32-sh64l elf32-sh64-linux elf32-sh64big-linux elf32-sh64-nbsd elf32-sh64l-nbsd elf64-sh64 elf64-sh64l elf64-sh64-linux elf64-sh64big-linux elf64-sh64-nbsd elf64-sh64l-nbsd coff-sh coff-shl coff-sh-small coff-shl-small elf32-sh elf32-shl elf32-shbig-fdpic elf32-sh-fdpic elf32-sh-linux elf32-shbig-linux elf32-sh-nbsd elf32-shl-nbsd elf32-shl-symbian elf32-sh-vxworks elf32-shl-vxworks pe-shl pei-shl a.out-sparc-little a.out-sparc-linux a.out-sparc-lynx a.out-sparc-netbsd a.out-sunos-big coff-sparc coff-sparc-lynx elf32-sparc elf32-sparc-sol2 elf32-sparc-vxworks elf64-sparc elf64-sparc-freebsd elf64-sparc-sol2 nlm32-sparc elf32-spu sym a.out-tic30 coff-tic30 coff0-beh-c54x coff0-c54x coff1-beh-c54x coff1-c54x coff2-beh-c54x coff2-c54x elf32-tic6x-be elf32-tic6x-le coff-tic80 elf32-tilegx-be elf32-tilegx-le elf64-tilegx-be elf64-tilegx-le elf32-tilepro elf32-ft32 elf32-v850-rh850 elf32-v850 a.out-vax1k-netbsd a.out-vax-bsd a.out-vax-netbsd elf32-vax elf32-visium coff-w65 coff-we32k coff-x86-64 elf32-x86-64 elf32-x86-64-nacl elf64-x86-64 elf64-x86-64-cloudabi elf64-x86-64-nacl elf64-x86-64-sol2 mach-o-x86-64 pe-x86-64 pe-bigobj-x86-64 pei-x86-64 elf32-xc16x elf32-xgate elf32-xstormy16 elf32-xtensa-be elf32-xtensa-le coff-z80 coff-z8k srec symbolsrec verilog tekhex binary ihex
' strip
}

atf_init_test_cases()
{
	atf_add_test_case no_arguments
}
