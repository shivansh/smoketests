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
	atf_check -s exit:0 -o inline:'a.out:0000000000601478 d _DYNAMIC
a.out:0000000000601658 d _GLOBAL_OFFSET_TABLE_
a.out:000000000040121c t _GLOBAL__sub_I_main
a.out:                 U _Unwind_Resume@@GCC_3.0
a.out:00000000004011de t _Z41__static_initialization_and_destruction_0ii
a.out:0000000000601730 d _ZL16__gthread_active
a.out:0000000000401046 t _ZL17__gthread_triggerv
a.out:                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
a.out:                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
a.out:                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
a.out:                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
a.out:                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
a.out:                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
a.out:                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
a.out:                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
a.out:                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
a.out:                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
a.out:                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
a.out:0000000000601740 B _ZSt4cout@@GLIBCXX_3.4
a.out:                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
a.out:0000000000601860 b _ZStL8__ioinit
a.out:                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
a.out:0000000000601458 d __CTOR_END__
a.out:0000000000601450 d __CTOR_LIST__
a.out:0000000000601468 D __DTOR_END__
a.out:0000000000601460 d __DTOR_LIST__
a.out:0000000000401408 r __FRAME_END__
a.out:0000000000401290 r __GNU_EH_FRAME_HDR
a.out:0000000000601470 d __JCR_END__
a.out:0000000000601470 d __JCR_LIST__
a.out:0000000000601738 D __TMC_END__
a.out:0000000000601734 B __bss_start
a.out:                 U __cxa_atexit@@FBSD_1.0
a.out:0000000000401240 t __do_global_ctors_aux
a.out:0000000000400fb0 t __do_global_dtors_aux
a.out:0000000000601728 D __dso_handle
a.out:0000000000601450 d __fini_array_end
a.out:0000000000601450 d __fini_array_start
a.out:                 U __gxx_personality_v0@@CXXABI_1.3
a.out:0000000000601450 t __init_array_end
a.out:0000000000601448 t __init_array_start
a.out:0000000000601446 t __preinit_array_end
a.out:0000000000601446 t __preinit_array_start
a.out:0000000000601720 D __progname
a.out:0000000000601734 D _edata
a.out:0000000000601870 B _end
a.out:0000000000401278 T _fini
a.out:0000000000400bb8 T _init
a.out:                 U _init_tls@@FBSD_1.0
a.out:0000000000400d40 T _start
a.out:0000000000400218 r abitag
a.out:                 U atexit@@FBSD_1.0
a.out:                 U closedir@@FBSD_1.0
a.out:0000000000601850 b completed.6262
a.out:0000000000400230 r crt_noinit_tag
a.out:0000000000400f30 t deregister_tm_clones
a.out:0000000000601858 b dtor_idx.6264
a.out:0000000000601868 B environ
a.out:                 U exit@@FBSD_1.0
a.out:0000000000400ed0 t finalizer
a.out:0000000000401020 t frame_dummy
a.out:0000000000401057 T main
a.out:                 U opendir@@FBSD_1.0
a.out:                 U readdir@@FBSD_1.0
a.out:0000000000400f70 t register_tm_clones
' nm -A
}

atf_test_case B_flag
B_flag_head()
{
	atf_set "descr" "Verify the usage of option 'B'"
}

B_flag_body()
{
	atf_check -s exit:0 -o inline:'0000000000601478 d _DYNAMIC
0000000000601658 d _GLOBAL_OFFSET_TABLE_
000000000040121c t _GLOBAL__sub_I_main
                 U _Unwind_Resume@@GCC_3.0
00000000004011de t _Z41__static_initialization_and_destruction_0ii
0000000000601730 d _ZL16__gthread_active
0000000000401046 t _ZL17__gthread_triggerv
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
0000000000601740 B _ZSt4cout@@GLIBCXX_3.4
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
0000000000601860 b _ZStL8__ioinit
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
0000000000601458 d __CTOR_END__
0000000000601450 d __CTOR_LIST__
0000000000601468 D __DTOR_END__
0000000000601460 d __DTOR_LIST__
0000000000401408 r __FRAME_END__
0000000000401290 r __GNU_EH_FRAME_HDR
0000000000601470 d __JCR_END__
0000000000601470 d __JCR_LIST__
0000000000601738 D __TMC_END__
0000000000601734 B __bss_start
                 U __cxa_atexit@@FBSD_1.0
0000000000401240 t __do_global_ctors_aux
0000000000400fb0 t __do_global_dtors_aux
0000000000601728 D __dso_handle
0000000000601450 d __fini_array_end
0000000000601450 d __fini_array_start
                 U __gxx_personality_v0@@CXXABI_1.3
0000000000601450 t __init_array_end
0000000000601448 t __init_array_start
0000000000601446 t __preinit_array_end
0000000000601446 t __preinit_array_start
0000000000601720 D __progname
0000000000601734 D _edata
0000000000601870 B _end
0000000000401278 T _fini
0000000000400bb8 T _init
                 U _init_tls@@FBSD_1.0
0000000000400d40 T _start
0000000000400218 r abitag
                 U atexit@@FBSD_1.0
                 U closedir@@FBSD_1.0
0000000000601850 b completed.6262
0000000000400230 r crt_noinit_tag
0000000000400f30 t deregister_tm_clones
0000000000601858 b dtor_idx.6264
0000000000601868 B environ
                 U exit@@FBSD_1.0
0000000000400ed0 t finalizer
0000000000401020 t frame_dummy
0000000000401057 T main
                 U opendir@@FBSD_1.0
                 U readdir@@FBSD_1.0
0000000000400f70 t register_tm_clones
' nm -B
}

atf_test_case D_flag
D_flag_head()
{
	atf_set "descr" "Verify the usage of option 'D'"
}

D_flag_body()
{
	atf_check -s exit:0 -o inline:'                 U _Unwind_Resume
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
                 U _ZNSaIcEC1Ev
                 U _ZNSaIcED1Ev
                 U _ZNSolsEPFRSoS_E
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_
                 U _ZNSt8ios_base4InitC1Ev
                 U _ZNSt8ios_base4InitD1Ev
0000000000601740 B _ZSt4cout
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
                 U __cxa_atexit
                 U __gxx_personality_v0
0000000000601720 D __progname
0000000000601870 B _end
                 U _init_tls
                 U atexit
                 U closedir
0000000000601868 B environ
                 U exit
                 U opendir
                 U readdir
' nm -D
}

atf_test_case P_flag
P_flag_head()
{
	atf_set "descr" "Verify the usage of option 'P'"
}

P_flag_body()
{
	atf_check -s exit:0 -o inline:'_DYNAMIC d 0000000000601478 
_GLOBAL_OFFSET_TABLE_ d 0000000000601658 
_GLOBAL__sub_I_main t 000000000040121c 0000000000000015
_Unwind_Resume@@GCC_3.0 U         
_Z41__static_initialization_and_destruction_0ii t 00000000004011de 000000000000003e
_ZL16__gthread_active d 0000000000601730 0000000000000004
_ZL17__gthread_triggerv t 0000000000401046 0000000000000011
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21 U         
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21 U         
_ZNSaIcEC1Ev@@GLIBCXX_3.4 U         
_ZNSaIcED1Ev@@GLIBCXX_3.4 U         
_ZNSolsEPFRSoS_E@@GLIBCXX_3.4 U         
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21 U         
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21 U         
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21 U         
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21 U         
_ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4 U         
_ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4 U         
_ZSt4cout@@GLIBCXX_3.4 B 0000000000601740 0000000000000110
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4 U         
_ZStL8__ioinit b 0000000000601860 0000000000000001
_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21 U         
__CTOR_END__ d 0000000000601458 
__CTOR_LIST__ d 0000000000601450 
__DTOR_END__ D 0000000000601468 
__DTOR_LIST__ d 0000000000601460 
__FRAME_END__ r 0000000000401408 
__GNU_EH_FRAME_HDR r 0000000000401290 
__JCR_END__ d 0000000000601470 
__JCR_LIST__ d 0000000000601470 
__TMC_END__ D 0000000000601738 
__bss_start B 0000000000601734 
__cxa_atexit@@FBSD_1.0 U         
__do_global_ctors_aux t 0000000000401240 
__do_global_dtors_aux t 0000000000400fb0 
__dso_handle D 0000000000601728 
__fini_array_end d 0000000000601450 
__fini_array_start d 0000000000601450 
__gxx_personality_v0@@CXXABI_1.3 U         
__init_array_end t 0000000000601450 
__init_array_start t 0000000000601448 
__preinit_array_end t 0000000000601446 
__preinit_array_start t 0000000000601446 
__progname D 0000000000601720 0000000000000008
_edata D 0000000000601734 
_end B 0000000000601870 
_fini T 0000000000401278 
_init T 0000000000400bb8 
_init_tls@@FBSD_1.0 U         
_start T 0000000000400d40 0000000000000186
abitag r 0000000000400218 0000000000000018
atexit@@FBSD_1.0 U         
closedir@@FBSD_1.0 U         
completed.6262 b 0000000000601850 0000000000000001
crt_noinit_tag r 0000000000400230 0000000000000018
deregister_tm_clones t 0000000000400f30 
dtor_idx.6264 b 0000000000601858 0000000000000008
environ B 0000000000601868 0000000000000008
exit@@FBSD_1.0 U         
finalizer t 0000000000400ed0 0000000000000053
frame_dummy t 0000000000401020 
main T 0000000000401057 0000000000000187
opendir@@FBSD_1.0 U         
readdir@@FBSD_1.0 U         
register_tm_clones t 0000000000400f70 
' nm -P
}

atf_test_case S_flag
S_flag_head()
{
	atf_set "descr" "Verify the usage of option 'S'"
}

S_flag_body()
{
	atf_check -s exit:0 -o inline:'0000000000601478 d _DYNAMIC
0000000000601658 d _GLOBAL_OFFSET_TABLE_
000000000040121c 0000000000000015 t _GLOBAL__sub_I_main
                 U _Unwind_Resume@@GCC_3.0
00000000004011de 000000000000003e t _Z41__static_initialization_and_destruction_0ii
0000000000601730 0000000000000004 d _ZL16__gthread_active
0000000000401046 0000000000000011 t _ZL17__gthread_triggerv
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
0000000000601740 0000000000000110 B _ZSt4cout@@GLIBCXX_3.4
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
0000000000601860 0000000000000001 b _ZStL8__ioinit
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
0000000000601458 d __CTOR_END__
0000000000601450 d __CTOR_LIST__
0000000000601468 D __DTOR_END__
0000000000601460 d __DTOR_LIST__
0000000000401408 r __FRAME_END__
0000000000401290 r __GNU_EH_FRAME_HDR
0000000000601470 d __JCR_END__
0000000000601470 d __JCR_LIST__
0000000000601738 D __TMC_END__
0000000000601734 B __bss_start
                 U __cxa_atexit@@FBSD_1.0
0000000000401240 t __do_global_ctors_aux
0000000000400fb0 t __do_global_dtors_aux
0000000000601728 D __dso_handle
0000000000601450 d __fini_array_end
0000000000601450 d __fini_array_start
                 U __gxx_personality_v0@@CXXABI_1.3
0000000000601450 t __init_array_end
0000000000601448 t __init_array_start
0000000000601446 t __preinit_array_end
0000000000601446 t __preinit_array_start
0000000000601720 0000000000000008 D __progname
0000000000601734 D _edata
0000000000601870 B _end
0000000000401278 T _fini
0000000000400bb8 T _init
                 U _init_tls@@FBSD_1.0
0000000000400d40 0000000000000186 T _start
0000000000400218 0000000000000018 r abitag
                 U atexit@@FBSD_1.0
                 U closedir@@FBSD_1.0
0000000000601850 0000000000000001 b completed.6262
0000000000400230 0000000000000018 r crt_noinit_tag
0000000000400f30 t deregister_tm_clones
0000000000601858 0000000000000008 b dtor_idx.6264
0000000000601868 0000000000000008 B environ
                 U exit@@FBSD_1.0
0000000000400ed0 0000000000000053 t finalizer
0000000000401020 t frame_dummy
0000000000401057 0000000000000187 T main
                 U opendir@@FBSD_1.0
                 U readdir@@FBSD_1.0
0000000000400f70 t register_tm_clones
' nm -S
}

atf_test_case V_flag
V_flag_head()
{
	atf_set "descr" "Verify the usage of option 'V'"
}

V_flag_body()
{
	atf_check -s exit:0 -o inline:'GNU nm (GNU Binutils) 2.28
Copyright (C) 2017 Free Software Foundation, Inc.
This program is free software; you may redistribute it under the terms of
the GNU General Public License version 3 or (at your option) any later version.
This program has absolutely no warranty.
' nm -V
}

atf_test_case a_flag
a_flag_head()
{
	atf_set "descr" "Verify the usage of option 'a'"
}

a_flag_body()
{
	atf_check -s exit:0 -o inline:'0000000000000000 a 
0000000000601740 b .bss
0000000000000000 n .comment
0000000000601450 d .ctors
0000000000601720 d .data
0000000000601460 d .dtors
0000000000601478 d .dynamic
0000000000400588 r .dynstr
0000000000400300 r .dynsym
00000000004012d8 r .eh_frame
0000000000401290 r .eh_frame_hdr
0000000000401278 t .fini
000000000040140c r .gcc_except_table
00000000004008d6 r .gnu.version
0000000000400910 r .gnu.version_r
0000000000601658 d .got.plt
0000000000400248 r .hash
0000000000400bb8 t .init
0000000000601448 t .init_array
0000000000400200 r .interp
0000000000601470 d .jcr
0000000000400218 r .note.tag
0000000000400bd0 t .plt
0000000000400990 r .rela.dyn
00000000004009a8 r .rela.plt
0000000000401286 r .rodata
0000000000400d40 t .text
0000000000000000 a /usr/src/lib/csu/amd64/crt1.c
0000000000601478 d _DYNAMIC
0000000000601658 d _GLOBAL_OFFSET_TABLE_
000000000040121c t _GLOBAL__sub_I_main
                 U _Unwind_Resume@@GCC_3.0
00000000004011de t _Z41__static_initialization_and_destruction_0ii
0000000000601730 d _ZL16__gthread_active
0000000000401046 t _ZL17__gthread_triggerv
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
0000000000601740 B _ZSt4cout@@GLIBCXX_3.4
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
0000000000601860 b _ZStL8__ioinit
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
0000000000601458 d __CTOR_END__
0000000000601450 d __CTOR_LIST__
0000000000601468 D __DTOR_END__
0000000000601460 d __DTOR_LIST__
0000000000401408 r __FRAME_END__
0000000000401290 r __GNU_EH_FRAME_HDR
0000000000601470 d __JCR_END__
0000000000601470 d __JCR_LIST__
0000000000601738 D __TMC_END__
0000000000601734 B __bss_start
                 U __cxa_atexit@@FBSD_1.0
0000000000401240 t __do_global_ctors_aux
0000000000400fb0 t __do_global_dtors_aux
0000000000601728 D __dso_handle
0000000000601450 d __fini_array_end
0000000000601450 d __fini_array_start
                 U __gxx_personality_v0@@CXXABI_1.3
0000000000601450 t __init_array_end
0000000000601448 t __init_array_start
0000000000601446 t __preinit_array_end
0000000000601446 t __preinit_array_start
0000000000601720 D __progname
0000000000601734 D _edata
0000000000601870 B _end
0000000000401278 T _fini
0000000000400bb8 T _init
                 U _init_tls@@FBSD_1.0
0000000000400d40 T _start
0000000000400218 r abitag
                 U atexit@@FBSD_1.0
                 U closedir@@FBSD_1.0
0000000000601850 b completed.6262
0000000000400230 r crt_noinit_tag
0000000000000000 a crtstuff.c
0000000000000000 a crtstuff.c
0000000000400f30 t deregister_tm_clones
0000000000601858 b dtor_idx.6264
0000000000601868 B environ
                 U exit@@FBSD_1.0
0000000000400ed0 t finalizer
0000000000401020 t frame_dummy
0000000000401057 T main
0000000000000000 a opendir.cpp
                 U opendir@@FBSD_1.0
                 U readdir@@FBSD_1.0
0000000000400f70 t register_tm_clones
' nm -a
}

atf_test_case e_flag
e_flag_head()
{
	atf_set "descr" "Verify the usage of option 'e'"
}

e_flag_body()
{
	atf_check -s exit:0 -o inline:'0000000000601478 d _DYNAMIC
0000000000601658 d _GLOBAL_OFFSET_TABLE_
000000000040121c t _GLOBAL__sub_I_main
                 U _Unwind_Resume@@GCC_3.0
00000000004011de t _Z41__static_initialization_and_destruction_0ii
0000000000601730 d _ZL16__gthread_active
0000000000401046 t _ZL17__gthread_triggerv
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
0000000000601740 B _ZSt4cout@@GLIBCXX_3.4
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
0000000000601860 b _ZStL8__ioinit
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
0000000000601458 d __CTOR_END__
0000000000601450 d __CTOR_LIST__
0000000000601468 D __DTOR_END__
0000000000601460 d __DTOR_LIST__
0000000000401408 r __FRAME_END__
0000000000401290 r __GNU_EH_FRAME_HDR
0000000000601470 d __JCR_END__
0000000000601470 d __JCR_LIST__
0000000000601738 D __TMC_END__
0000000000601734 B __bss_start
                 U __cxa_atexit@@FBSD_1.0
0000000000401240 t __do_global_ctors_aux
0000000000400fb0 t __do_global_dtors_aux
0000000000601728 D __dso_handle
0000000000601450 d __fini_array_end
0000000000601450 d __fini_array_start
                 U __gxx_personality_v0@@CXXABI_1.3
0000000000601450 t __init_array_end
0000000000601448 t __init_array_start
0000000000601446 t __preinit_array_end
0000000000601446 t __preinit_array_start
0000000000601720 D __progname
0000000000601734 D _edata
0000000000601870 B _end
0000000000401278 T _fini
0000000000400bb8 T _init
                 U _init_tls@@FBSD_1.0
0000000000400d40 T _start
0000000000400218 r abitag
                 U atexit@@FBSD_1.0
                 U closedir@@FBSD_1.0
0000000000601850 b completed.6262
0000000000400230 r crt_noinit_tag
0000000000400f30 t deregister_tm_clones
0000000000601858 b dtor_idx.6264
0000000000601868 B environ
                 U exit@@FBSD_1.0
0000000000400ed0 t finalizer
0000000000401020 t frame_dummy
0000000000401057 T main
                 U opendir@@FBSD_1.0
                 U readdir@@FBSD_1.0
0000000000400f70 t register_tm_clones
' nm -e
}

atf_test_case g_flag
g_flag_head()
{
	atf_set "descr" "Verify the usage of option 'g'"
}

g_flag_body()
{
	atf_check -s exit:0 -o inline:'                 U _Unwind_Resume@@GCC_3.0
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
0000000000601740 B _ZSt4cout@@GLIBCXX_3.4
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
0000000000601468 D __DTOR_END__
0000000000601738 D __TMC_END__
0000000000601734 B __bss_start
                 U __cxa_atexit@@FBSD_1.0
0000000000601728 D __dso_handle
                 U __gxx_personality_v0@@CXXABI_1.3
0000000000601720 D __progname
0000000000601734 D _edata
0000000000601870 B _end
0000000000401278 T _fini
0000000000400bb8 T _init
                 U _init_tls@@FBSD_1.0
0000000000400d40 T _start
                 U atexit@@FBSD_1.0
                 U closedir@@FBSD_1.0
0000000000601868 B environ
                 U exit@@FBSD_1.0
0000000000401057 T main
                 U opendir@@FBSD_1.0
                 U readdir@@FBSD_1.0
' nm -g
}

atf_test_case l_flag
l_flag_head()
{
	atf_set "descr" "Verify the usage of option 'l'"
}

l_flag_body()
{
	atf_check -s exit:0 -o inline:'0000000000601478 d _DYNAMIC
0000000000601658 d _GLOBAL_OFFSET_TABLE_
000000000040121c t _GLOBAL__sub_I_main
                 U _Unwind_Resume@@GCC_3.0
00000000004011de t _Z41__static_initialization_and_destruction_0ii
0000000000601730 d _ZL16__gthread_active
0000000000401046 t _ZL17__gthread_triggerv
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
0000000000601740 B _ZSt4cout@@GLIBCXX_3.4
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
0000000000601860 b _ZStL8__ioinit
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
0000000000601458 d __CTOR_END__
0000000000601450 d __CTOR_LIST__
0000000000601468 D __DTOR_END__
0000000000601460 d __DTOR_LIST__
0000000000401408 r __FRAME_END__
0000000000401290 r __GNU_EH_FRAME_HDR
0000000000601470 d __JCR_END__
0000000000601470 d __JCR_LIST__
0000000000601738 D __TMC_END__
0000000000601734 B __bss_start
                 U __cxa_atexit@@FBSD_1.0
0000000000401240 t __do_global_ctors_aux
0000000000400fb0 t __do_global_dtors_aux
0000000000601728 D __dso_handle
0000000000601450 d __fini_array_end
0000000000601450 d __fini_array_start
                 U __gxx_personality_v0@@CXXABI_1.3
0000000000601450 t __init_array_end
0000000000601448 t __init_array_start
0000000000601446 t __preinit_array_end
0000000000601446 t __preinit_array_start
0000000000601720 D __progname
0000000000601734 D _edata
0000000000601870 B _end
0000000000401278 T _fini
0000000000400bb8 T _init
                 U _init_tls@@FBSD_1.0
0000000000400d40 T _start
0000000000400218 r abitag
                 U atexit@@FBSD_1.0
                 U closedir@@FBSD_1.0
0000000000601850 b completed.6262
0000000000400230 r crt_noinit_tag
0000000000400f30 t deregister_tm_clones
0000000000601858 b dtor_idx.6264
0000000000601868 B environ
                 U exit@@FBSD_1.0
0000000000400ed0 t finalizer
0000000000401020 t frame_dummy
0000000000401057 T main
                 U opendir@@FBSD_1.0
                 U readdir@@FBSD_1.0
0000000000400f70 t register_tm_clones
' nm -l
}

atf_test_case n_flag
n_flag_head()
{
	atf_set "descr" "Verify the usage of option 'n'"
}

n_flag_body()
{
	atf_check -s exit:0 -o inline:'                 U _Unwind_Resume@@GCC_3.0
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
                 U __cxa_atexit@@FBSD_1.0
                 U __gxx_personality_v0@@CXXABI_1.3
                 U _init_tls@@FBSD_1.0
                 U atexit@@FBSD_1.0
                 U closedir@@FBSD_1.0
                 U exit@@FBSD_1.0
                 U opendir@@FBSD_1.0
                 U readdir@@FBSD_1.0
0000000000400218 r abitag
0000000000400230 r crt_noinit_tag
0000000000400bb8 T _init
0000000000400d40 T _start
0000000000400ed0 t finalizer
0000000000400f30 t deregister_tm_clones
0000000000400f70 t register_tm_clones
0000000000400fb0 t __do_global_dtors_aux
0000000000401020 t frame_dummy
0000000000401046 t _ZL17__gthread_triggerv
0000000000401057 T main
00000000004011de t _Z41__static_initialization_and_destruction_0ii
000000000040121c t _GLOBAL__sub_I_main
0000000000401240 t __do_global_ctors_aux
0000000000401278 T _fini
0000000000401290 r __GNU_EH_FRAME_HDR
0000000000401408 r __FRAME_END__
0000000000601446 t __preinit_array_end
0000000000601446 t __preinit_array_start
0000000000601448 t __init_array_start
0000000000601450 d __CTOR_LIST__
0000000000601450 d __fini_array_end
0000000000601450 d __fini_array_start
0000000000601450 t __init_array_end
0000000000601458 d __CTOR_END__
0000000000601460 d __DTOR_LIST__
0000000000601468 D __DTOR_END__
0000000000601470 d __JCR_END__
0000000000601470 d __JCR_LIST__
0000000000601478 d _DYNAMIC
0000000000601658 d _GLOBAL_OFFSET_TABLE_
0000000000601720 D __progname
0000000000601728 D __dso_handle
0000000000601730 d _ZL16__gthread_active
0000000000601734 B __bss_start
0000000000601734 D _edata
0000000000601738 D __TMC_END__
0000000000601740 B _ZSt4cout@@GLIBCXX_3.4
0000000000601850 b completed.6262
0000000000601858 b dtor_idx.6264
0000000000601860 b _ZStL8__ioinit
0000000000601868 B environ
0000000000601870 B _end
' nm -n
}

atf_test_case o_flag
o_flag_head()
{
	atf_set "descr" "Verify the usage of option 'o'"
}

o_flag_body()
{
	atf_check -s exit:0 -o inline:'a.out:0000000000601478 d _DYNAMIC
a.out:0000000000601658 d _GLOBAL_OFFSET_TABLE_
a.out:000000000040121c t _GLOBAL__sub_I_main
a.out:                 U _Unwind_Resume@@GCC_3.0
a.out:00000000004011de t _Z41__static_initialization_and_destruction_0ii
a.out:0000000000601730 d _ZL16__gthread_active
a.out:0000000000401046 t _ZL17__gthread_triggerv
a.out:                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
a.out:                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
a.out:                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
a.out:                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
a.out:                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
a.out:                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
a.out:                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
a.out:                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
a.out:                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
a.out:                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
a.out:                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
a.out:0000000000601740 B _ZSt4cout@@GLIBCXX_3.4
a.out:                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
a.out:0000000000601860 b _ZStL8__ioinit
a.out:                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
a.out:0000000000601458 d __CTOR_END__
a.out:0000000000601450 d __CTOR_LIST__
a.out:0000000000601468 D __DTOR_END__
a.out:0000000000601460 d __DTOR_LIST__
a.out:0000000000401408 r __FRAME_END__
a.out:0000000000401290 r __GNU_EH_FRAME_HDR
a.out:0000000000601470 d __JCR_END__
a.out:0000000000601470 d __JCR_LIST__
a.out:0000000000601738 D __TMC_END__
a.out:0000000000601734 B __bss_start
a.out:                 U __cxa_atexit@@FBSD_1.0
a.out:0000000000401240 t __do_global_ctors_aux
a.out:0000000000400fb0 t __do_global_dtors_aux
a.out:0000000000601728 D __dso_handle
a.out:0000000000601450 d __fini_array_end
a.out:0000000000601450 d __fini_array_start
a.out:                 U __gxx_personality_v0@@CXXABI_1.3
a.out:0000000000601450 t __init_array_end
a.out:0000000000601448 t __init_array_start
a.out:0000000000601446 t __preinit_array_end
a.out:0000000000601446 t __preinit_array_start
a.out:0000000000601720 D __progname
a.out:0000000000601734 D _edata
a.out:0000000000601870 B _end
a.out:0000000000401278 T _fini
a.out:0000000000400bb8 T _init
a.out:                 U _init_tls@@FBSD_1.0
a.out:0000000000400d40 T _start
a.out:0000000000400218 r abitag
a.out:                 U atexit@@FBSD_1.0
a.out:                 U closedir@@FBSD_1.0
a.out:0000000000601850 b completed.6262
a.out:0000000000400230 r crt_noinit_tag
a.out:0000000000400f30 t deregister_tm_clones
a.out:0000000000601858 b dtor_idx.6264
a.out:0000000000601868 B environ
a.out:                 U exit@@FBSD_1.0
a.out:0000000000400ed0 t finalizer
a.out:0000000000401020 t frame_dummy
a.out:0000000000401057 T main
a.out:                 U opendir@@FBSD_1.0
a.out:                 U readdir@@FBSD_1.0
a.out:0000000000400f70 t register_tm_clones
' nm -o
}

atf_test_case p_flag
p_flag_head()
{
	atf_set "descr" "Verify the usage of option 'p'"
}

p_flag_body()
{
	atf_check -s exit:0 -o inline:'0000000000400218 r abitag
0000000000400230 r crt_noinit_tag
0000000000400ed0 t finalizer
0000000000601450 d __CTOR_LIST__
0000000000601460 d __DTOR_LIST__
0000000000601470 d __JCR_LIST__
0000000000400f30 t deregister_tm_clones
0000000000400f70 t register_tm_clones
0000000000400fb0 t __do_global_dtors_aux
0000000000601850 b completed.6262
0000000000601858 b dtor_idx.6264
0000000000401020 t frame_dummy
0000000000601458 d __CTOR_END__
0000000000401408 r __FRAME_END__
0000000000601470 d __JCR_END__
0000000000401240 t __do_global_ctors_aux
0000000000601730 d _ZL16__gthread_active
0000000000401046 t _ZL17__gthread_triggerv
0000000000601860 b _ZStL8__ioinit
00000000004011de t _Z41__static_initialization_and_destruction_0ii
000000000040121c t _GLOBAL__sub_I_main
0000000000401290 r __GNU_EH_FRAME_HDR
0000000000601450 d __fini_array_start
0000000000601450 d __fini_array_end
0000000000601478 d _DYNAMIC
0000000000601450 t __init_array_end
0000000000601446 t __preinit_array_start
0000000000601446 t __preinit_array_end
0000000000601448 t __init_array_start
0000000000601658 d _GLOBAL_OFFSET_TABLE_
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
0000000000601720 D __progname
0000000000601734 D _edata
0000000000401057 T main
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
0000000000601468 D __DTOR_END__
0000000000601728 D __dso_handle
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
                 U atexit@@FBSD_1.0
0000000000401278 T _fini
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
0000000000400d40 T _start
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
                 U _init_tls@@FBSD_1.0
                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
0000000000400bb8 T _init
0000000000601738 D __TMC_END__
                 U readdir@@FBSD_1.0
0000000000601740 B _ZSt4cout@@GLIBCXX_3.4
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
0000000000601870 B _end
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
                 U opendir@@FBSD_1.0
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
0000000000601734 B __bss_start
                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
                 U __gxx_personality_v0@@CXXABI_1.3
                 U _Unwind_Resume@@GCC_3.0
                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
                 U __cxa_atexit@@FBSD_1.0
                 U closedir@@FBSD_1.0
0000000000601868 B environ
                 U exit@@FBSD_1.0
                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
' nm -p
}

atf_test_case v_flag
v_flag_head()
{
	atf_set "descr" "Verify the usage of option 'v'"
}

v_flag_body()
{
	atf_check -s exit:0 -o inline:'                 U _Unwind_Resume@@GCC_3.0
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
                 U __cxa_atexit@@FBSD_1.0
                 U __gxx_personality_v0@@CXXABI_1.3
                 U _init_tls@@FBSD_1.0
                 U atexit@@FBSD_1.0
                 U closedir@@FBSD_1.0
                 U exit@@FBSD_1.0
                 U opendir@@FBSD_1.0
                 U readdir@@FBSD_1.0
0000000000400218 r abitag
0000000000400230 r crt_noinit_tag
0000000000400bb8 T _init
0000000000400d40 T _start
0000000000400ed0 t finalizer
0000000000400f30 t deregister_tm_clones
0000000000400f70 t register_tm_clones
0000000000400fb0 t __do_global_dtors_aux
0000000000401020 t frame_dummy
0000000000401046 t _ZL17__gthread_triggerv
0000000000401057 T main
00000000004011de t _Z41__static_initialization_and_destruction_0ii
000000000040121c t _GLOBAL__sub_I_main
0000000000401240 t __do_global_ctors_aux
0000000000401278 T _fini
0000000000401290 r __GNU_EH_FRAME_HDR
0000000000401408 r __FRAME_END__
0000000000601446 t __preinit_array_end
0000000000601446 t __preinit_array_start
0000000000601448 t __init_array_start
0000000000601450 d __CTOR_LIST__
0000000000601450 d __fini_array_end
0000000000601450 d __fini_array_start
0000000000601450 t __init_array_end
0000000000601458 d __CTOR_END__
0000000000601460 d __DTOR_LIST__
0000000000601468 D __DTOR_END__
0000000000601470 d __JCR_END__
0000000000601470 d __JCR_LIST__
0000000000601478 d _DYNAMIC
0000000000601658 d _GLOBAL_OFFSET_TABLE_
0000000000601720 D __progname
0000000000601728 D __dso_handle
0000000000601730 d _ZL16__gthread_active
0000000000601734 B __bss_start
0000000000601734 D _edata
0000000000601738 D __TMC_END__
0000000000601740 B _ZSt4cout@@GLIBCXX_3.4
0000000000601850 b completed.6262
0000000000601858 b dtor_idx.6264
0000000000601860 b _ZStL8__ioinit
0000000000601868 B environ
0000000000601870 B _end
' nm -v
}

atf_test_case r_flag
r_flag_head()
{
	atf_set "descr" "Verify the usage of option 'r'"
}

r_flag_body()
{
	atf_check -s exit:0 -o inline:'0000000000400f70 t register_tm_clones
                 U readdir@@FBSD_1.0
                 U opendir@@FBSD_1.0
0000000000401057 T main
0000000000401020 t frame_dummy
0000000000400ed0 t finalizer
                 U exit@@FBSD_1.0
0000000000601868 B environ
0000000000601858 b dtor_idx.6264
0000000000400f30 t deregister_tm_clones
0000000000400230 r crt_noinit_tag
0000000000601850 b completed.6262
                 U closedir@@FBSD_1.0
                 U atexit@@FBSD_1.0
0000000000400218 r abitag
0000000000400d40 T _start
                 U _init_tls@@FBSD_1.0
0000000000400bb8 T _init
0000000000401278 T _fini
0000000000601870 B _end
0000000000601734 D _edata
0000000000601720 D __progname
0000000000601446 t __preinit_array_start
0000000000601446 t __preinit_array_end
0000000000601448 t __init_array_start
0000000000601450 t __init_array_end
                 U __gxx_personality_v0@@CXXABI_1.3
0000000000601450 d __fini_array_start
0000000000601450 d __fini_array_end
0000000000601728 D __dso_handle
0000000000400fb0 t __do_global_dtors_aux
0000000000401240 t __do_global_ctors_aux
                 U __cxa_atexit@@FBSD_1.0
0000000000601734 B __bss_start
0000000000601738 D __TMC_END__
0000000000601470 d __JCR_LIST__
0000000000601470 d __JCR_END__
0000000000401290 r __GNU_EH_FRAME_HDR
0000000000401408 r __FRAME_END__
0000000000601460 d __DTOR_LIST__
0000000000601468 D __DTOR_END__
0000000000601450 d __CTOR_LIST__
0000000000601458 d __CTOR_END__
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
0000000000601860 b _ZStL8__ioinit
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
0000000000601740 B _ZSt4cout@@GLIBCXX_3.4
                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
0000000000401046 t _ZL17__gthread_triggerv
0000000000601730 d _ZL16__gthread_active
00000000004011de t _Z41__static_initialization_and_destruction_0ii
                 U _Unwind_Resume@@GCC_3.0
000000000040121c t _GLOBAL__sub_I_main
0000000000601658 d _GLOBAL_OFFSET_TABLE_
0000000000601478 d _DYNAMIC
' nm -r
}

atf_test_case s_flag
s_flag_head()
{
	atf_set "descr" "Verify the usage of option 's'"
}

s_flag_body()
{
	atf_check -s exit:0 -o inline:'0000000000601478 d _DYNAMIC
0000000000601658 d _GLOBAL_OFFSET_TABLE_
000000000040121c t _GLOBAL__sub_I_main
                 U _Unwind_Resume@@GCC_3.0
00000000004011de t _Z41__static_initialization_and_destruction_0ii
0000000000601730 d _ZL16__gthread_active
0000000000401046 t _ZL17__gthread_triggerv
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
0000000000601740 B _ZSt4cout@@GLIBCXX_3.4
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
0000000000601860 b _ZStL8__ioinit
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
0000000000601458 d __CTOR_END__
0000000000601450 d __CTOR_LIST__
0000000000601468 D __DTOR_END__
0000000000601460 d __DTOR_LIST__
0000000000401408 r __FRAME_END__
0000000000401290 r __GNU_EH_FRAME_HDR
0000000000601470 d __JCR_END__
0000000000601470 d __JCR_LIST__
0000000000601738 D __TMC_END__
0000000000601734 B __bss_start
                 U __cxa_atexit@@FBSD_1.0
0000000000401240 t __do_global_ctors_aux
0000000000400fb0 t __do_global_dtors_aux
0000000000601728 D __dso_handle
0000000000601450 d __fini_array_end
0000000000601450 d __fini_array_start
                 U __gxx_personality_v0@@CXXABI_1.3
0000000000601450 t __init_array_end
0000000000601448 t __init_array_start
0000000000601446 t __preinit_array_end
0000000000601446 t __preinit_array_start
0000000000601720 D __progname
0000000000601734 D _edata
0000000000601870 B _end
0000000000401278 T _fini
0000000000400bb8 T _init
                 U _init_tls@@FBSD_1.0
0000000000400d40 T _start
0000000000400218 r abitag
                 U atexit@@FBSD_1.0
                 U closedir@@FBSD_1.0
0000000000601850 b completed.6262
0000000000400230 r crt_noinit_tag
0000000000400f30 t deregister_tm_clones
0000000000601858 b dtor_idx.6264
0000000000601868 B environ
                 U exit@@FBSD_1.0
0000000000400ed0 t finalizer
0000000000401020 t frame_dummy
0000000000401057 T main
                 U opendir@@FBSD_1.0
                 U readdir@@FBSD_1.0
0000000000400f70 t register_tm_clones
' nm -s
}

atf_test_case u_flag
u_flag_head()
{
	atf_set "descr" "Verify the usage of option 'u'"
}

u_flag_body()
{
	atf_check -s exit:0 -o inline:'                 U _Unwind_Resume@@GCC_3.0
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
                 U __cxa_atexit@@FBSD_1.0
                 U __gxx_personality_v0@@CXXABI_1.3
                 U _init_tls@@FBSD_1.0
                 U atexit@@FBSD_1.0
                 U closedir@@FBSD_1.0
                 U exit@@FBSD_1.0
                 U opendir@@FBSD_1.0
                 U readdir@@FBSD_1.0
' nm -u
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s exit:1 -e inline:'Usage: nm [option(s)] [file(s)]
 List symbols in [file(s)] (a.out by default).
 The options are:
  -a, --debug-syms       Display debugger-only symbols
  -A, --print-file-name  Print name of the input file before every symbol
  -B                     Same as --format=bsd
  -C, --demangle[=STYLE] Decode low-level symbol names into user-level names
                          The STYLE, if specified, can be `auto' (the default),
                          `gnu', `lucid', `arm', `hp', `edg', `gnu-v3', `java'
                          or `gnat'
      --no-demangle      Do not demangle low-level symbol names
  -D, --dynamic          Display dynamic symbols instead of normal symbols
      --defined-only     Display only defined symbols
  -e                     (ignored)
  -f, --format=FORMAT    Use the output format FORMAT.  FORMAT can be `bsd',
                           `sysv' or `posix'.  The default is `bsd'
  -g, --extern-only      Display only external symbols
  -l, --line-numbers     Use debugging information to find a filename and
                           line number for each symbol
  -n, --numeric-sort     Sort symbols numerically by address
  -o                     Same as -A
  -p, --no-sort          Do not sort the symbols
  -P, --portability      Same as --format=posix
  -r, --reverse-sort     Reverse the sense of the sort
      --plugin NAME      Load the specified plugin
  -S, --print-size       Print size of defined symbols
  -s, --print-armap      Include index for symbols from archive members
      --size-sort        Sort symbols by size
      --special-syms     Include special symbols in the output
      --synthetic        Display synthetic symbols as well
  -t, --radix=RADIX      Use RADIX for printing symbol values
      --target=BFDNAME   Specify the target object format as BFDNAME
  -u, --undefined-only   Display only undefined symbols
      --with-symbol-versions  Display version strings after symbol names
  -X 32_64               (ignored)
  @FILE                  Read options from FILE
  -h, --help             Display this information
  -V, --version          Display this program's version number

nm: supported targets: elf64-x86-64-freebsd elf32-bigaarch64 elf32-littleaarch64 elf64-bigaarch64 elf64-bigaarch64-cloudabi elf64-littleaarch64 elf64-littleaarch64-cloudabi mach-o-arm64 ecoff-littlealpha elf64-alpha elf64-alpha-freebsd nlm32-alpha vms-alpha vms-libtxt elf32-am33lin a.out-zero-big demo64 a.out.adobe elf32-bigarc elf32-littlearc a.out-arm-netbsd coff-arm-big coff-arm-little elf32-bigarm elf32-littlearm elf32-bigarm-symbian elf32-littlearm-symbian elf32-bigarm-vxworks elf32-littlearm-vxworks mach-o-arm pe-arm-big pe-arm-little epoc-pe-arm-big epoc-pe-arm-little pe-arm-wince-big pe-arm-wince-little pei-arm-big pei-arm-little epoc-pei-arm-big epoc-pei-arm-little pei-arm-wince-big pei-arm-wince-little elf32-avr elf32-bfin elf32-bfinfdpic b.out.big b.out.little elf32-cr16 elf32-cr16c a.out-cris elf32-cris elf32-us-cris elf32-crx elf32-d10v elf32-d30v elf32-dlx elf32-big elf32-little elf64-big elf64-little elf32-epiphany elf32-fr30 elf32-frv elf32-frvfdpic coff-h8300 elf32-h8300 elf32-h8300-linux coff-h8500 elf32-hppa elf32-hppa-linux elf32-hppa-netbsd elf64-hppa elf64-hppa-linux som elf32-i370 a.out-i386 a.out-i386-bsd a.out-i386-freebsd a.out-i386-lynx a.out-i386-netbsd i386os9k coff-i386 coff-go32 coff-go32-exe coff-i386-lynx elf32-i386 elf32-i386-freebsd elf32-i386-nacl elf32-i386-sol2 elf32-i386-vxworks mach-o-i386 msdos nlm32-i386 pe-i386 pei-i386 elf32-iamcu coff-i860 elf32-i860 elf32-i860-little elf32-i960 elf32-ia64-hpux-big elf64-ia64-big elf64-ia64-little elf64-ia64-hpux-big elf64-ia64-vms pei-ia64 coff-Intel-big coff-Intel-little ieee elf32-ip2k elf32-iq2000 elf64-k1om elf64-k1om-freebsd elf64-l1om elf64-l1om-freebsd elf32-lm32 elf32-m32c elf32-m32r elf32-m32rle elf32-m32r-linux elf32-m32rle-linux elf32-m68hc11 elf32-m68hc12 a.out-hp300hpux a.out-m68k-netbsd a.out-newsos3 coff-m68k coff-m68k-sysv coff-m68k-un elf32-m68k versados a.out-m88k-mach3 a.out-m88k-openbsd coff-m88kbcs elf32-m88k mach-o-be mach-o-le mach-o-fat elf32-mcore-big elf32-mcore-little pe-mcore-big pe-mcore-little pei-mcore-big pei-mcore-little elf32-mep elf32-metag elf32-microblaze a.out-mips-little ecoff-bigmips ecoff-littlemips ecoff-biglittlemips elf32-bigmips elf32-littlemips elf32-nbigmips elf32-nlittlemips elf32-ntradbigmips elf32-ntradlittlemips elf32-ntradbigmips-freebsd elf32-ntradlittlemips-freebsd elf32-tradbigmips elf32-tradlittlemips elf32-tradbigmips-freebsd elf32-tradlittlemips-freebsd elf32-bigmips-vxworks elf32-littlemips-vxworks elf64-bigmips elf64-littlemips elf64-tradbigmips elf64-tradlittlemips elf64-tradbigmips-freebsd elf64-tradlittlemips-freebsd pe-mips pei-mips elf64-mmix mmo elf32-mn10200 elf32-mn10300 elf32-bigmoxie elf32-littlemoxie elf32-msp430 elf32-msp430 elf32-mt elf32-nds32be elf32-nds32le elf32-nds32be-linux elf32-nds32le-linux elf32-bignios2 elf32-littlenios2 a.out-pc532-mach a.out-ns32k-netbsd elf32-or1k a.out-pdp11 pef pef-xlib elf32-pj elf32-pjl plugin ppcboot elf32-powerpc elf32-powerpcle elf32-powerpc-freebsd elf32-powerpc-vxworks elf64-powerpc elf64-powerpcle elf64-powerpc-freebsd nlm32-powerpc pe-powerpc pe-powerpcle pei-powerpc pei-powerpcle elf32-littleriscv elf64-littleriscv elf32-rl78 aixcoff64-rs6000 aix5coff64-rs6000 aixcoff-rs6000 elf32-rx-be elf32-rx-be-ns elf32-rx-le elf32-s390 elf64-s390 elf32-bigscore elf32-littlescore elf32-sh64 elf32-sh64l elf32-sh64-linux elf32-sh64big-linux elf32-sh64-nbsd elf32-sh64l-nbsd elf64-sh64 elf64-sh64l elf64-sh64-linux elf64-sh64big-linux elf64-sh64-nbsd elf64-sh64l-nbsd coff-sh coff-shl coff-sh-small coff-shl-small elf32-sh elf32-shl elf32-shbig-fdpic elf32-sh-fdpic elf32-sh-linux elf32-shbig-linux elf32-sh-nbsd elf32-shl-nbsd elf32-shl-symbian elf32-sh-vxworks elf32-shl-vxworks pe-shl pei-shl a.out-sparc-little a.out-sparc-linux a.out-sparc-lynx a.out-sparc-netbsd a.out-sunos-big coff-sparc coff-sparc-lynx elf32-sparc elf32-sparc-sol2 elf32-sparc-vxworks elf64-sparc elf64-sparc-freebsd elf64-sparc-sol2 nlm32-sparc elf32-spu sym a.out-tic30 coff-tic30 coff0-beh-c54x coff0-c54x coff1-beh-c54x coff1-c54x coff2-beh-c54x coff2-c54x elf32-tic6x-be elf32-tic6x-le coff-tic80 elf32-tilegx-be elf32-tilegx-le elf64-tilegx-be elf64-tilegx-le elf32-tilepro elf32-ft32 elf32-v850-rh850 elf32-v850 a.out-vax1k-netbsd a.out-vax-bsd a.out-vax-netbsd elf32-vax elf32-visium coff-w65 coff-we32k coff-x86-64 elf32-x86-64 elf32-x86-64-nacl elf64-x86-64 elf64-x86-64-cloudabi elf64-x86-64-nacl elf64-x86-64-sol2 mach-o-x86-64 pe-x86-64 pe-bigobj-x86-64 pei-x86-64 elf32-xc16x elf32-xgate elf32-xstormy16 elf32-xtensa-be elf32-xtensa-le coff-z80 coff-z8k srec symbolsrec verilog tekhex binary ihex
Report bugs to <http://www.sourceware.org/bugzilla/>.
' nm -h
	atf_check -s exit:1 -e inline:'nm: option requires an argument -- f
Usage: nm [option(s)] [file(s)]
 List symbols in [file(s)] (a.out by default).
 The options are:
  -a, --debug-syms       Display debugger-only symbols
  -A, --print-file-name  Print name of the input file before every symbol
  -B                     Same as --format=bsd
  -C, --demangle[=STYLE] Decode low-level symbol names into user-level names
                          The STYLE, if specified, can be `auto' (the default),
                          `gnu', `lucid', `arm', `hp', `edg', `gnu-v3', `java'
                          or `gnat'
      --no-demangle      Do not demangle low-level symbol names
  -D, --dynamic          Display dynamic symbols instead of normal symbols
      --defined-only     Display only defined symbols
  -e                     (ignored)
  -f, --format=FORMAT    Use the output format FORMAT.  FORMAT can be `bsd',
                           `sysv' or `posix'.  The default is `bsd'
  -g, --extern-only      Display only external symbols
  -l, --line-numbers     Use debugging information to find a filename and
                           line number for each symbol
  -n, --numeric-sort     Sort symbols numerically by address
  -o                     Same as -A
  -p, --no-sort          Do not sort the symbols
  -P, --portability      Same as --format=posix
  -r, --reverse-sort     Reverse the sense of the sort
      --plugin NAME      Load the specified plugin
  -S, --print-size       Print size of defined symbols
  -s, --print-armap      Include index for symbols from archive members
      --size-sort        Sort symbols by size
      --special-syms     Include special symbols in the output
      --synthetic        Display synthetic symbols as well
  -t, --radix=RADIX      Use RADIX for printing symbol values
      --target=BFDNAME   Specify the target object format as BFDNAME
  -u, --undefined-only   Display only undefined symbols
      --with-symbol-versions  Display version strings after symbol names
  -X 32_64               (ignored)
  @FILE                  Read options from FILE
  -h, --help             Display this information
  -V, --version          Display this program's version number

nm: supported targets: elf64-x86-64-freebsd elf32-bigaarch64 elf32-littleaarch64 elf64-bigaarch64 elf64-bigaarch64-cloudabi elf64-littleaarch64 elf64-littleaarch64-cloudabi mach-o-arm64 ecoff-littlealpha elf64-alpha elf64-alpha-freebsd nlm32-alpha vms-alpha vms-libtxt elf32-am33lin a.out-zero-big demo64 a.out.adobe elf32-bigarc elf32-littlearc a.out-arm-netbsd coff-arm-big coff-arm-little elf32-bigarm elf32-littlearm elf32-bigarm-symbian elf32-littlearm-symbian elf32-bigarm-vxworks elf32-littlearm-vxworks mach-o-arm pe-arm-big pe-arm-little epoc-pe-arm-big epoc-pe-arm-little pe-arm-wince-big pe-arm-wince-little pei-arm-big pei-arm-little epoc-pei-arm-big epoc-pei-arm-little pei-arm-wince-big pei-arm-wince-little elf32-avr elf32-bfin elf32-bfinfdpic b.out.big b.out.little elf32-cr16 elf32-cr16c a.out-cris elf32-cris elf32-us-cris elf32-crx elf32-d10v elf32-d30v elf32-dlx elf32-big elf32-little elf64-big elf64-little elf32-epiphany elf32-fr30 elf32-frv elf32-frvfdpic coff-h8300 elf32-h8300 elf32-h8300-linux coff-h8500 elf32-hppa elf32-hppa-linux elf32-hppa-netbsd elf64-hppa elf64-hppa-linux som elf32-i370 a.out-i386 a.out-i386-bsd a.out-i386-freebsd a.out-i386-lynx a.out-i386-netbsd i386os9k coff-i386 coff-go32 coff-go32-exe coff-i386-lynx elf32-i386 elf32-i386-freebsd elf32-i386-nacl elf32-i386-sol2 elf32-i386-vxworks mach-o-i386 msdos nlm32-i386 pe-i386 pei-i386 elf32-iamcu coff-i860 elf32-i860 elf32-i860-little elf32-i960 elf32-ia64-hpux-big elf64-ia64-big elf64-ia64-little elf64-ia64-hpux-big elf64-ia64-vms pei-ia64 coff-Intel-big coff-Intel-little ieee elf32-ip2k elf32-iq2000 elf64-k1om elf64-k1om-freebsd elf64-l1om elf64-l1om-freebsd elf32-lm32 elf32-m32c elf32-m32r elf32-m32rle elf32-m32r-linux elf32-m32rle-linux elf32-m68hc11 elf32-m68hc12 a.out-hp300hpux a.out-m68k-netbsd a.out-newsos3 coff-m68k coff-m68k-sysv coff-m68k-un elf32-m68k versados a.out-m88k-mach3 a.out-m88k-openbsd coff-m88kbcs elf32-m88k mach-o-be mach-o-le mach-o-fat elf32-mcore-big elf32-mcore-little pe-mcore-big pe-mcore-little pei-mcore-big pei-mcore-little elf32-mep elf32-metag elf32-microblaze a.out-mips-little ecoff-bigmips ecoff-littlemips ecoff-biglittlemips elf32-bigmips elf32-littlemips elf32-nbigmips elf32-nlittlemips elf32-ntradbigmips elf32-ntradlittlemips elf32-ntradbigmips-freebsd elf32-ntradlittlemips-freebsd elf32-tradbigmips elf32-tradlittlemips elf32-tradbigmips-freebsd elf32-tradlittlemips-freebsd elf32-bigmips-vxworks elf32-littlemips-vxworks elf64-bigmips elf64-littlemips elf64-tradbigmips elf64-tradlittlemips elf64-tradbigmips-freebsd elf64-tradlittlemips-freebsd pe-mips pei-mips elf64-mmix mmo elf32-mn10200 elf32-mn10300 elf32-bigmoxie elf32-littlemoxie elf32-msp430 elf32-msp430 elf32-mt elf32-nds32be elf32-nds32le elf32-nds32be-linux elf32-nds32le-linux elf32-bignios2 elf32-littlenios2 a.out-pc532-mach a.out-ns32k-netbsd elf32-or1k a.out-pdp11 pef pef-xlib elf32-pj elf32-pjl plugin ppcboot elf32-powerpc elf32-powerpcle elf32-powerpc-freebsd elf32-powerpc-vxworks elf64-powerpc elf64-powerpcle elf64-powerpc-freebsd nlm32-powerpc pe-powerpc pe-powerpcle pei-powerpc pei-powerpcle elf32-littleriscv elf64-littleriscv elf32-rl78 aixcoff64-rs6000 aix5coff64-rs6000 aixcoff-rs6000 elf32-rx-be elf32-rx-be-ns elf32-rx-le elf32-s390 elf64-s390 elf32-bigscore elf32-littlescore elf32-sh64 elf32-sh64l elf32-sh64-linux elf32-sh64big-linux elf32-sh64-nbsd elf32-sh64l-nbsd elf64-sh64 elf64-sh64l elf64-sh64-linux elf64-sh64big-linux elf64-sh64-nbsd elf64-sh64l-nbsd coff-sh coff-shl coff-sh-small coff-shl-small elf32-sh elf32-shl elf32-shbig-fdpic elf32-sh-fdpic elf32-sh-linux elf32-shbig-linux elf32-sh-nbsd elf32-shl-nbsd elf32-shl-symbian elf32-sh-vxworks elf32-shl-vxworks pe-shl pei-shl a.out-sparc-little a.out-sparc-linux a.out-sparc-lynx a.out-sparc-netbsd a.out-sunos-big coff-sparc coff-sparc-lynx elf32-sparc elf32-sparc-sol2 elf32-sparc-vxworks elf64-sparc elf64-sparc-freebsd elf64-sparc-sol2 nlm32-sparc elf32-spu sym a.out-tic30 coff-tic30 coff0-beh-c54x coff0-c54x coff1-beh-c54x coff1-c54x coff2-beh-c54x coff2-c54x elf32-tic6x-be elf32-tic6x-le coff-tic80 elf32-tilegx-be elf32-tilegx-le elf64-tilegx-be elf64-tilegx-le elf32-tilepro elf32-ft32 elf32-v850-rh850 elf32-v850 a.out-vax1k-netbsd a.out-vax-bsd a.out-vax-netbsd elf32-vax elf32-visium coff-w65 coff-we32k coff-x86-64 elf32-x86-64 elf32-x86-64-nacl elf64-x86-64 elf64-x86-64-cloudabi elf64-x86-64-nacl elf64-x86-64-sol2 mach-o-x86-64 pe-x86-64 pe-bigobj-x86-64 pei-x86-64 elf32-xc16x elf32-xgate elf32-xstormy16 elf32-xtensa-be elf32-xtensa-le coff-z80 coff-z8k srec symbolsrec verilog tekhex binary ihex
' nm -f
	atf_check -s exit:1 -e inline:'nm: invalid option -- x
Usage: nm [option(s)] [file(s)]
 List symbols in [file(s)] (a.out by default).
 The options are:
  -a, --debug-syms       Display debugger-only symbols
  -A, --print-file-name  Print name of the input file before every symbol
  -B                     Same as --format=bsd
  -C, --demangle[=STYLE] Decode low-level symbol names into user-level names
                          The STYLE, if specified, can be `auto' (the default),
                          `gnu', `lucid', `arm', `hp', `edg', `gnu-v3', `java'
                          or `gnat'
      --no-demangle      Do not demangle low-level symbol names
  -D, --dynamic          Display dynamic symbols instead of normal symbols
      --defined-only     Display only defined symbols
  -e                     (ignored)
  -f, --format=FORMAT    Use the output format FORMAT.  FORMAT can be `bsd',
                           `sysv' or `posix'.  The default is `bsd'
  -g, --extern-only      Display only external symbols
  -l, --line-numbers     Use debugging information to find a filename and
                           line number for each symbol
  -n, --numeric-sort     Sort symbols numerically by address
  -o                     Same as -A
  -p, --no-sort          Do not sort the symbols
  -P, --portability      Same as --format=posix
  -r, --reverse-sort     Reverse the sense of the sort
      --plugin NAME      Load the specified plugin
  -S, --print-size       Print size of defined symbols
  -s, --print-armap      Include index for symbols from archive members
      --size-sort        Sort symbols by size
      --special-syms     Include special symbols in the output
      --synthetic        Display synthetic symbols as well
  -t, --radix=RADIX      Use RADIX for printing symbol values
      --target=BFDNAME   Specify the target object format as BFDNAME
  -u, --undefined-only   Display only undefined symbols
      --with-symbol-versions  Display version strings after symbol names
  -X 32_64               (ignored)
  @FILE                  Read options from FILE
  -h, --help             Display this information
  -V, --version          Display this program's version number

nm: supported targets: elf64-x86-64-freebsd elf32-bigaarch64 elf32-littleaarch64 elf64-bigaarch64 elf64-bigaarch64-cloudabi elf64-littleaarch64 elf64-littleaarch64-cloudabi mach-o-arm64 ecoff-littlealpha elf64-alpha elf64-alpha-freebsd nlm32-alpha vms-alpha vms-libtxt elf32-am33lin a.out-zero-big demo64 a.out.adobe elf32-bigarc elf32-littlearc a.out-arm-netbsd coff-arm-big coff-arm-little elf32-bigarm elf32-littlearm elf32-bigarm-symbian elf32-littlearm-symbian elf32-bigarm-vxworks elf32-littlearm-vxworks mach-o-arm pe-arm-big pe-arm-little epoc-pe-arm-big epoc-pe-arm-little pe-arm-wince-big pe-arm-wince-little pei-arm-big pei-arm-little epoc-pei-arm-big epoc-pei-arm-little pei-arm-wince-big pei-arm-wince-little elf32-avr elf32-bfin elf32-bfinfdpic b.out.big b.out.little elf32-cr16 elf32-cr16c a.out-cris elf32-cris elf32-us-cris elf32-crx elf32-d10v elf32-d30v elf32-dlx elf32-big elf32-little elf64-big elf64-little elf32-epiphany elf32-fr30 elf32-frv elf32-frvfdpic coff-h8300 elf32-h8300 elf32-h8300-linux coff-h8500 elf32-hppa elf32-hppa-linux elf32-hppa-netbsd elf64-hppa elf64-hppa-linux som elf32-i370 a.out-i386 a.out-i386-bsd a.out-i386-freebsd a.out-i386-lynx a.out-i386-netbsd i386os9k coff-i386 coff-go32 coff-go32-exe coff-i386-lynx elf32-i386 elf32-i386-freebsd elf32-i386-nacl elf32-i386-sol2 elf32-i386-vxworks mach-o-i386 msdos nlm32-i386 pe-i386 pei-i386 elf32-iamcu coff-i860 elf32-i860 elf32-i860-little elf32-i960 elf32-ia64-hpux-big elf64-ia64-big elf64-ia64-little elf64-ia64-hpux-big elf64-ia64-vms pei-ia64 coff-Intel-big coff-Intel-little ieee elf32-ip2k elf32-iq2000 elf64-k1om elf64-k1om-freebsd elf64-l1om elf64-l1om-freebsd elf32-lm32 elf32-m32c elf32-m32r elf32-m32rle elf32-m32r-linux elf32-m32rle-linux elf32-m68hc11 elf32-m68hc12 a.out-hp300hpux a.out-m68k-netbsd a.out-newsos3 coff-m68k coff-m68k-sysv coff-m68k-un elf32-m68k versados a.out-m88k-mach3 a.out-m88k-openbsd coff-m88kbcs elf32-m88k mach-o-be mach-o-le mach-o-fat elf32-mcore-big elf32-mcore-little pe-mcore-big pe-mcore-little pei-mcore-big pei-mcore-little elf32-mep elf32-metag elf32-microblaze a.out-mips-little ecoff-bigmips ecoff-littlemips ecoff-biglittlemips elf32-bigmips elf32-littlemips elf32-nbigmips elf32-nlittlemips elf32-ntradbigmips elf32-ntradlittlemips elf32-ntradbigmips-freebsd elf32-ntradlittlemips-freebsd elf32-tradbigmips elf32-tradlittlemips elf32-tradbigmips-freebsd elf32-tradlittlemips-freebsd elf32-bigmips-vxworks elf32-littlemips-vxworks elf64-bigmips elf64-littlemips elf64-tradbigmips elf64-tradlittlemips elf64-tradbigmips-freebsd elf64-tradlittlemips-freebsd pe-mips pei-mips elf64-mmix mmo elf32-mn10200 elf32-mn10300 elf32-bigmoxie elf32-littlemoxie elf32-msp430 elf32-msp430 elf32-mt elf32-nds32be elf32-nds32le elf32-nds32be-linux elf32-nds32le-linux elf32-bignios2 elf32-littlenios2 a.out-pc532-mach a.out-ns32k-netbsd elf32-or1k a.out-pdp11 pef pef-xlib elf32-pj elf32-pjl plugin ppcboot elf32-powerpc elf32-powerpcle elf32-powerpc-freebsd elf32-powerpc-vxworks elf64-powerpc elf64-powerpcle elf64-powerpc-freebsd nlm32-powerpc pe-powerpc pe-powerpcle pei-powerpc pei-powerpcle elf32-littleriscv elf64-littleriscv elf32-rl78 aixcoff64-rs6000 aix5coff64-rs6000 aixcoff-rs6000 elf32-rx-be elf32-rx-be-ns elf32-rx-le elf32-s390 elf64-s390 elf32-bigscore elf32-littlescore elf32-sh64 elf32-sh64l elf32-sh64-linux elf32-sh64big-linux elf32-sh64-nbsd elf32-sh64l-nbsd elf64-sh64 elf64-sh64l elf64-sh64-linux elf64-sh64big-linux elf64-sh64-nbsd elf64-sh64l-nbsd coff-sh coff-shl coff-sh-small coff-shl-small elf32-sh elf32-shl elf32-shbig-fdpic elf32-sh-fdpic elf32-sh-linux elf32-shbig-linux elf32-sh-nbsd elf32-shl-nbsd elf32-shl-symbian elf32-sh-vxworks elf32-shl-vxworks pe-shl pei-shl a.out-sparc-little a.out-sparc-linux a.out-sparc-lynx a.out-sparc-netbsd a.out-sunos-big coff-sparc coff-sparc-lynx elf32-sparc elf32-sparc-sol2 elf32-sparc-vxworks elf64-sparc elf64-sparc-freebsd elf64-sparc-sol2 nlm32-sparc elf32-spu sym a.out-tic30 coff-tic30 coff0-beh-c54x coff0-c54x coff1-beh-c54x coff1-c54x coff2-beh-c54x coff2-c54x elf32-tic6x-be elf32-tic6x-le coff-tic80 elf32-tilegx-be elf32-tilegx-le elf64-tilegx-be elf64-tilegx-le elf32-tilepro elf32-ft32 elf32-v850-rh850 elf32-v850 a.out-vax1k-netbsd a.out-vax-bsd a.out-vax-netbsd elf32-vax elf32-visium coff-w65 coff-we32k coff-x86-64 elf32-x86-64 elf32-x86-64-nacl elf64-x86-64 elf64-x86-64-cloudabi elf64-x86-64-nacl elf64-x86-64-sol2 mach-o-x86-64 pe-x86-64 pe-bigobj-x86-64 pei-x86-64 elf32-xc16x elf32-xgate elf32-xstormy16 elf32-xtensa-be elf32-xtensa-le coff-z80 coff-z8k srec symbolsrec verilog tekhex binary ihex
' nm -x
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that nm executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:'0000000000601478 d _DYNAMIC
0000000000601658 d _GLOBAL_OFFSET_TABLE_
000000000040121c t _GLOBAL__sub_I_main
                 U _Unwind_Resume@@GCC_3.0
00000000004011de t _Z41__static_initialization_and_destruction_0ii
0000000000601730 d _ZL16__gthread_active
0000000000401046 t _ZL17__gthread_triggerv
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21
                 U _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@@GLIBCXX_3.4.21
                 U _ZNSaIcEC1Ev@@GLIBCXX_3.4
                 U _ZNSaIcED1Ev@@GLIBCXX_3.4
                 U _ZNSolsEPFRSoS_E@@GLIBCXX_3.4
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21
                 U _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21
                 U _ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4
                 U _ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4
0000000000601740 B _ZSt4cout@@GLIBCXX_3.4
                 U _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4
0000000000601860 b _ZStL8__ioinit
                 U _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21
0000000000601458 d __CTOR_END__
0000000000601450 d __CTOR_LIST__
0000000000601468 D __DTOR_END__
0000000000601460 d __DTOR_LIST__
0000000000401408 r __FRAME_END__
0000000000401290 r __GNU_EH_FRAME_HDR
0000000000601470 d __JCR_END__
0000000000601470 d __JCR_LIST__
0000000000601738 D __TMC_END__
0000000000601734 B __bss_start
                 U __cxa_atexit@@FBSD_1.0
0000000000401240 t __do_global_ctors_aux
0000000000400fb0 t __do_global_dtors_aux
0000000000601728 D __dso_handle
0000000000601450 d __fini_array_end
0000000000601450 d __fini_array_start
                 U __gxx_personality_v0@@CXXABI_1.3
0000000000601450 t __init_array_end
0000000000601448 t __init_array_start
0000000000601446 t __preinit_array_end
0000000000601446 t __preinit_array_start
0000000000601720 D __progname
0000000000601734 D _edata
0000000000601870 B _end
0000000000401278 T _fini
0000000000400bb8 T _init
                 U _init_tls@@FBSD_1.0
0000000000400d40 T _start
0000000000400218 r abitag
                 U atexit@@FBSD_1.0
                 U closedir@@FBSD_1.0
0000000000601850 b completed.6262
0000000000400230 r crt_noinit_tag
0000000000400f30 t deregister_tm_clones
0000000000601858 b dtor_idx.6264
0000000000601868 B environ
                 U exit@@FBSD_1.0
0000000000400ed0 t finalizer
0000000000401020 t frame_dummy
0000000000401057 T main
                 U opendir@@FBSD_1.0
                 U readdir@@FBSD_1.0
0000000000400f70 t register_tm_clones
' nm
}

atf_init_test_cases()
{
	atf_add_test_case h_flag
	atf_add_test_case A_flag
	atf_add_test_case B_flag
	atf_add_test_case D_flag
	atf_add_test_case P_flag
	atf_add_test_case S_flag
	atf_add_test_case V_flag
	atf_add_test_case a_flag
	atf_add_test_case e_flag
	atf_add_test_case g_flag
	atf_add_test_case l_flag
	atf_add_test_case n_flag
	atf_add_test_case o_flag
	atf_add_test_case p_flag
	atf_add_test_case v_flag
	atf_add_test_case r_flag
	atf_add_test_case s_flag
	atf_add_test_case u_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
