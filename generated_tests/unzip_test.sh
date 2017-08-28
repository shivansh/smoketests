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

usage_output='Zipinfo mode'

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -a
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -C
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -c
	atf_check -s not-exit:0 -e inline:"unzip: option requires an argument -- d
Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -d
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -f
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -j
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -L
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -l
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -n
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -o
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -p
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -q
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -t
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -u
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -v
	atf_check -s not-exit:0 -e inline:"unzip: option requires an argument -- x
Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -x
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip -y
	atf_check -s not-exit:0 -e inline:"Zipinfo mode needs additional options
" unzip -Z
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that unzip(1) fails and generates a valid output when no arguments are supplied"
}

no_arguments_body()
{
	atf_check -s not-exit:0 -e inline:"Usage: unzip [-aCcfjLlnopqtuvyZ1] [-d dir] [-x pattern] zipfile
" unzip
}

atf_init_test_cases()
{
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
