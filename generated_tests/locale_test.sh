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
	atf_check -s exit:0 -o inline:"C
POSIX
af_ZA.ISO8859-1
af_ZA.ISO8859-15
af_ZA.UTF-8
am_ET.UTF-8
ar_AE.UTF-8
ar_EG.UTF-8
ar_JO.UTF-8
ar_MA.UTF-8
ar_QA.UTF-8
ar_SA.UTF-8
be_BY.CP1131
be_BY.CP1251
be_BY.ISO8859-5
be_BY.UTF-8
bg_BG.CP1251
bg_BG.UTF-8
ca_AD.ISO8859-1
ca_AD.ISO8859-15
ca_AD.UTF-8
ca_ES.ISO8859-1
ca_ES.ISO8859-15
ca_ES.UTF-8
ca_FR.ISO8859-1
ca_FR.ISO8859-15
ca_FR.UTF-8
ca_IT.ISO8859-1
ca_IT.ISO8859-15
ca_IT.UTF-8
cs_CZ.ISO8859-2
cs_CZ.UTF-8
da_DK.ISO8859-1
da_DK.ISO8859-15
da_DK.UTF-8
de_AT.ISO8859-1
de_AT.ISO8859-15
de_AT.UTF-8
de_CH.ISO8859-1
de_CH.ISO8859-15
de_CH.UTF-8
de_DE.ISO8859-1
de_DE.ISO8859-15
de_DE.UTF-8
el_GR.ISO8859-7
el_GR.UTF-8
en_AU.ISO8859-1
en_AU.ISO8859-15
en_AU.US-ASCII
en_AU.UTF-8
en_CA.ISO8859-1
en_CA.ISO8859-15
en_CA.US-ASCII
en_CA.UTF-8
en_GB.ISO8859-1
en_GB.ISO8859-15
en_GB.US-ASCII
en_GB.UTF-8
en_HK.ISO8859-1
en_HK.UTF-8
en_IE.ISO8859-1
en_IE.ISO8859-15
en_IE.UTF-8
en_NZ.ISO8859-1
en_NZ.ISO8859-15
en_NZ.US-ASCII
en_NZ.UTF-8
en_PH.UTF-8
en_SG.ISO8859-1
en_SG.UTF-8
en_US.ISO8859-1
en_US.ISO8859-15
en_US.US-ASCII
en_US.UTF-8
en_ZA.ISO8859-1
en_ZA.ISO8859-15
en_ZA.US-ASCII
en_ZA.UTF-8
es_AR.ISO8859-1
es_AR.UTF-8
es_CR.UTF-8
es_ES.ISO8859-1
es_ES.ISO8859-15
es_ES.UTF-8
es_MX.ISO8859-1
es_MX.UTF-8
et_EE.ISO8859-1
et_EE.ISO8859-15
et_EE.UTF-8
eu_ES.ISO8859-1
eu_ES.ISO8859-15
eu_ES.UTF-8
fi_FI.ISO8859-1
fi_FI.ISO8859-15
fi_FI.UTF-8
fr_BE.ISO8859-1
fr_BE.ISO8859-15
fr_BE.UTF-8
fr_CA.ISO8859-1
fr_CA.ISO8859-15
fr_CA.UTF-8
fr_CH.ISO8859-1
fr_CH.ISO8859-15
fr_CH.UTF-8
fr_FR.ISO8859-1
fr_FR.ISO8859-15
fr_FR.UTF-8
he_IL.UTF-8
hi_IN.ISCII-DEV
hi_IN.UTF-8
hr_HR.ISO8859-2
hr_HR.UTF-8
hu_HU.ISO8859-2
hu_HU.UTF-8
hy_AM.ARMSCII-8
hy_AM.UTF-8
is_IS.ISO8859-1
is_IS.ISO8859-15
is_IS.UTF-8
it_CH.ISO8859-1
it_CH.ISO8859-15
it_CH.UTF-8
it_IT.ISO8859-1
it_IT.ISO8859-15
it_IT.UTF-8
ja_JP.SJIS
ja_JP.UTF-8
ja_JP.eucJP
kk_KZ.UTF-8
ko_KR.CP949
ko_KR.UTF-8
ko_KR.eucKR
lt_LT.ISO8859-13
lt_LT.UTF-8
lv_LV.ISO8859-13
lv_LV.UTF-8
mn_MN.UTF-8
nb_NO.ISO8859-1
nb_NO.ISO8859-15
nb_NO.UTF-8
nl_BE.ISO8859-1
nl_BE.ISO8859-15
nl_BE.UTF-8
nl_NL.ISO8859-1
nl_NL.ISO8859-15
nl_NL.UTF-8
nn_NO.ISO8859-1
nn_NO.ISO8859-15
nn_NO.UTF-8
pl_PL.ISO8859-2
pl_PL.UTF-8
pt_BR.ISO8859-1
pt_BR.UTF-8
pt_PT.ISO8859-1
pt_PT.ISO8859-15
pt_PT.UTF-8
ro_RO.ISO8859-2
ro_RO.UTF-8
ru_RU.CP1251
ru_RU.CP866
ru_RU.ISO8859-5
ru_RU.KOI8-R
ru_RU.UTF-8
se_FI.UTF-8
se_NO.UTF-8
sk_SK.ISO8859-2
sk_SK.UTF-8
sl_SI.ISO8859-2
sl_SI.UTF-8
sr_RS.ISO8859-2
sr_RS.ISO8859-5
sr_RS.UTF-8
sr_RS.UTF-8@latin
sv_FI.ISO8859-1
sv_FI.ISO8859-15
sv_FI.UTF-8
sv_SE.ISO8859-1
sv_SE.ISO8859-15
sv_SE.UTF-8
tr_TR.ISO8859-9
tr_TR.UTF-8
uk_UA.CP1251
uk_UA.ISO8859-5
uk_UA.KOI8-U
uk_UA.UTF-8
zh_CN.GB18030
zh_CN.GB2312
zh_CN.GBK
zh_CN.UTF-8
zh_CN.eucCN
zh_HK.UTF-8
zh_TW.Big5
zh_TW.UTF-8
" locale -a
}

atf_test_case c_flag
c_flag_head()
{
	atf_set "descr" "Verify the usage of option 'c'"
}

c_flag_body()
{
	atf_check -s exit:0 -o inline:"charmap             	LC_CTYPE
decimal_point       	LC_NUMERIC
thousands_sep       	LC_NUMERIC
grouping            	LC_NUMERIC
radixchar           	LC_NUMERIC
thousep             	LC_NUMERIC
int_curr_symbol     	LC_MONETARY
currency_symbol     	LC_MONETARY
mon_decimal_point   	LC_MONETARY
mon_thousands_sep   	LC_MONETARY
mon_grouping        	LC_MONETARY
positive_sign       	LC_MONETARY
negative_sign       	LC_MONETARY
int_frac_digits     	LC_MONETARY
frac_digits         	LC_MONETARY
p_cs_precedes       	LC_MONETARY
p_sep_by_space      	LC_MONETARY
n_cs_precedes       	LC_MONETARY
n_sep_by_space      	LC_MONETARY
p_sign_posn         	LC_MONETARY
n_sign_posn         	LC_MONETARY
int_p_cs_precedes   	LC_MONETARY
int_p_sep_by_space  	LC_MONETARY
int_n_cs_precedes   	LC_MONETARY
int_n_sep_by_space  	LC_MONETARY
int_p_sign_posn     	LC_MONETARY
int_n_sign_posn     	LC_MONETARY
d_t_fmt             	LC_TIME
d_fmt               	LC_TIME
t_fmt               	LC_TIME
am_str              	LC_TIME
pm_str              	LC_TIME
t_fmt_ampm          	LC_TIME
day_1               	LC_TIME
day_2               	LC_TIME
day_3               	LC_TIME
day_4               	LC_TIME
day_5               	LC_TIME
day_6               	LC_TIME
day_7               	LC_TIME
abday_1             	LC_TIME
abday_2             	LC_TIME
abday_3             	LC_TIME
abday_4             	LC_TIME
abday_5             	LC_TIME
abday_6             	LC_TIME
abday_7             	LC_TIME
mon_1               	LC_TIME
mon_2               	LC_TIME
mon_3               	LC_TIME
mon_4               	LC_TIME
mon_5               	LC_TIME
mon_6               	LC_TIME
mon_7               	LC_TIME
mon_8               	LC_TIME
mon_9               	LC_TIME
mon_10              	LC_TIME
mon_11              	LC_TIME
mon_12              	LC_TIME
abmon_1             	LC_TIME
abmon_2             	LC_TIME
abmon_3             	LC_TIME
abmon_4             	LC_TIME
abmon_5             	LC_TIME
abmon_6             	LC_TIME
abmon_7             	LC_TIME
abmon_8             	LC_TIME
abmon_9             	LC_TIME
abmon_10            	LC_TIME
abmon_11            	LC_TIME
abmon_12            	LC_TIME
altmon_1            	LC_TIME
altmon_2            	LC_TIME
altmon_3            	LC_TIME
altmon_4            	LC_TIME
altmon_5            	LC_TIME
altmon_6            	LC_TIME
altmon_7            	LC_TIME
altmon_8            	LC_TIME
altmon_9            	LC_TIME
altmon_10           	LC_TIME
altmon_11           	LC_TIME
altmon_12           	LC_TIME
era                 	LC_TIME
era_d_fmt           	LC_TIME
era_d_t_fmt         	LC_TIME
era_t_fmt           	LC_TIME
alt_digits          	LC_TIME
d_md_order          	LC_TIME
yesexpr             	LC_MESSAGES
noexpr              	LC_MESSAGES
yesstr              	LC_MESSAGES
nostr               	LC_MESSAGES
" locale -c
}

atf_test_case k_flag
k_flag_head()
{
	atf_set "descr" "Verify the usage of option 'k'"
}

k_flag_body()
{
	atf_check -s exit:0 -o inline:"charmap="US-ASCII"
decimal_point="."
thousands_sep=""
grouping=""
radixchar="."
thousep=""
int_curr_symbol=""
currency_symbol=""
mon_decimal_point=""
mon_thousands_sep=""
mon_grouping=""
positive_sign=""
negative_sign=""
int_frac_digits=127
frac_digits=127
p_cs_precedes=127
p_sep_by_space=127
n_cs_precedes=127
n_sep_by_space=127
p_sign_posn=127
n_sign_posn=127
int_p_cs_precedes=127
int_p_sep_by_space=127
int_n_cs_precedes=127
int_n_sep_by_space=127
int_p_sign_posn=127
int_n_sign_posn=127
d_t_fmt="%a %b %e %H:%M:%S %Y"
d_fmt="%m/%d/%y"
t_fmt="%H:%M:%S"
am_str="AM"
pm_str="PM"
t_fmt_ampm="%I:%M:%S %p"
day_1="Sunday"
day_2="Monday"
day_3="Tuesday"
day_4="Wednesday"
day_5="Thursday"
day_6="Friday"
day_7="Saturday"
abday_1="Sun"
abday_2="Mon"
abday_3="Tue"
abday_4="Wed"
abday_5="Thu"
abday_6="Fri"
abday_7="Sat"
mon_1="January"
mon_2="February"
mon_3="March"
mon_4="April"
mon_5="May"
mon_6="June"
mon_7="July"
mon_8="August"
mon_9="September"
mon_10="October"
mon_11="November"
mon_12="December"
abmon_1="Jan"
abmon_2="Feb"
abmon_3="Mar"
abmon_4="Apr"
abmon_5="May"
abmon_6="Jun"
abmon_7="Jul"
abmon_8="Aug"
abmon_9="Sep"
abmon_10="Oct"
abmon_11="Nov"
abmon_12="Dec"
altmon_1="January"
altmon_2="February"
altmon_3="March"
altmon_4="April"
altmon_5="May"
altmon_6="June"
altmon_7="July"
altmon_8="August"
altmon_9="September"
altmon_10="October"
altmon_11="November"
altmon_12="December"
era=""
era_d_fmt=""
era_d_t_fmt=""
era_t_fmt=""
alt_digits=""
d_md_order="md"
yesexpr="^[yY]"
noexpr="^[nN]"
yesstr="yes"
nostr="no"
" locale -k
}

atf_test_case m_flag
m_flag_head()
{
	atf_set "descr" "Verify the usage of option 'm'"
}

m_flag_body()
{
	atf_check -s exit:0 -o inline:"ARMSCII-8
Big5
CP1131
CP1251
CP866
CP949
GB18030
GB2312
GBK
ISCII-DEV
ISO8859-1
ISO8859-13
ISO8859-15
ISO8859-2
ISO8859-5
ISO8859-7
ISO8859-9
KOI8-R
KOI8-U
SJIS
US-ASCII
UTF-8
UTF-8@latin
eucCN
eucJP
eucKR
" locale -m
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
	atf_set "descr" "Verify that locale(1) executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:"LANG=
LC_CTYPE="C"
LC_COLLATE="C"
LC_TIME="C"
LC_NUMERIC="C"
LC_MONETARY="C"
LC_MESSAGES="C"
LC_ALL=
" locale
}

atf_init_test_cases()
{
	atf_add_test_case a_flag
	atf_add_test_case c_flag
	atf_add_test_case k_flag
	atf_add_test_case m_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
