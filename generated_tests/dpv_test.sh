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

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"dpv: option requires an argument -- a
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -a
	atf_check -s not-exit:0 -e inline:"dpv: option requires an argument -- b
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -b
	atf_check -s not-exit:0 -e inline:"dpv: no labels provided
" dpv -d
	atf_check -s not-exit:0 -e inline:"dpv: no labels provided
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -D
	atf_check -s not-exit:0 -e inline:"Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -h
	atf_check -s not-exit:0 -e inline:"dpv: option requires an argument -- i
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -i
	atf_check -s not-exit:0 -e inline:"dpv: option requires an argument -- I
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -I
	atf_check -s not-exit:0 -e inline:"dpv: no labels provided
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -k
	atf_check -s not-exit:0 -e inline:"dpv: no labels provided
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -l
	atf_check -s not-exit:0 -e inline:"dpv: option requires an argument -- L
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -L
	atf_check -s not-exit:0 -e inline:"dpv: no labels provided
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -m
	atf_check -s not-exit:0 -e inline:"dpv: option requires an argument -- n
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -n
	atf_check -s not-exit:0 -e inline:"dpv: no labels provided
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -N
	atf_check -s not-exit:0 -e inline:"dpv: option requires an argument -- o
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -o
	atf_check -s not-exit:0 -e inline:"dpv: option requires an argument -- p
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -p
	atf_check -s not-exit:0 -e inline:"dpv: option requires an argument -- P
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -P
	atf_check -s not-exit:0 -e inline:"dpv: option requires an argument -- t
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -t
	atf_check -s not-exit:0 -e inline:"dpv: no labels provided
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -T
	atf_check -s not-exit:0 -e inline:"dpv: option requires an argument -- U
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -U
	atf_check -s not-exit:0 -e inline:"dpv: no labels provided
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -w
	atf_check -s not-exit:0 -e inline:"dpv: option requires an argument -- x
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -x
	atf_check -s not-exit:0 -e inline:"dpv: no labels provided
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv -X
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that dpv(1) fails and generates a valid output when no arguments are supplied"
}

no_arguments_body()
{
	atf_check -s not-exit:0 -e inline:"dpv: no labels provided
Usage: dpv [options] bytes:label
       dpv [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]
OPTIONS:
	-a text        Append text. Displayed below file progress indicators.
	-b backtitle   String to be displayed on the backdrop, at top-left.
	-d             Debug. Write to standard output instead of dialog.
	-D             Use dialog(1) instead of dialog(3) [default].
	-h             Produce this output on standard error and exit.
	-i format      Customize status line format. See fdpv(1) for details.
	-I format      Customize status line format. See fdpv(1) for details.
	-L size        Label size. Must be a number greater than 0, or -1.
	-m             Enable processing of multiple file argiments.
	-n num         Display at-most num files per screen. Default is -1.
	-N             No overrun. Stop reading input at stated length, if any.
	-o file        Output data to file. First %s replaced with label text.
	-p text        Prefix text. Displayed above file progress indicators.
	-P size        Mini-progressbar size. Must be a number greater than 3.
	-t title       Title string to be displayed at top of dialog(1) box.
	-T             Test mode. Don't actually read any data, but fake it.
	-U num         Update status line num times per-second. Default is 2.
	-w             Wide. Width of `-p' and `-a' text bump dialog(1) width.
	-x cmd         Send data to executed cmd. First %s replaced with label.
	-X             X11. Use Xdialog(1) instead of dialog(1).
" dpv
}

atf_init_test_cases()
{
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
