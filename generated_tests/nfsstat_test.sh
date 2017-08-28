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

atf_test_case c_flag
c_flag_head()
{
	atf_set "descr" "Verify the usage of option 'c'"
}

c_flag_body()
{
	atf_check -s exit:0 -o inline:"Client Info:
Rpc Counts:
  Getattr   Setattr    Lookup  Readlink      Read     Write    Create    Remove
        0         0         0         0         0         0         0         0
   Rename      Link   Symlink     Mkdir     Rmdir   Readdir  RdirPlus    Access
        0         0         0         0         0         0         0         0
    Mknod    Fsstat    Fsinfo  PathConf    Commit
        0         0         0         0         0
Rpc Info:
 TimedOut   Invalid X Replies   Retries  Requests
        0         0         0         0         0
Cache Info:
Attr Hits    Misses Lkup Hits    Misses BioR Hits    Misses BioW Hits    Misses
        0         0         0         0         0         0         0         0
BioRLHits    Misses BioD Hits    Misses DirE Hits    Misses Accs Hits    Misses
        0         0         0         0         0         0         0         0
" nfsstat -c
}

atf_test_case e_flag
e_flag_head()
{
	atf_set "descr" "Verify the usage of option 'e'"
}

e_flag_body()
{
	atf_check -s exit:0 -o inline:"Client Info:
Rpc Counts:
  Getattr   Setattr    Lookup  Readlink      Read     Write    Create    Remove
        0         0         0         0         0         0         0         0
   Rename      Link   Symlink     Mkdir     Rmdir   Readdir  RdirPlus    Access
        0         0         0         0         0         0         0         0
    Mknod    Fsstat    Fsinfo  PathConf    Commit   SetClId SetClIdCf      Lock
        0         0         0         0         0         0         0         0
    LockT     LockU      Open   OpenCfr
        0         0         0         0
OpenOwner     Opens LockOwner     Locks    Delegs  LocalOwn LocalOpen LocalLOwn
        0         0         0         0         0         0         0         0
LocalLock
        0
Rpc Info:
 TimedOut   Invalid X Replies   Retries  Requests
        0         0         0         0         0
Cache Info:
Attr Hits    Misses Lkup Hits    Misses BioR Hits    Misses BioW Hits    Misses
        0         0         0         0         0         0         0         0
BioRLHits    Misses BioD Hits    Misses DirE Hits    Misses
        0         0         0         0         0         0

Server Info:
  Getattr   Setattr    Lookup  Readlink      Read     Write    Create    Remove
        0         0         0         0         0         0         0         0
   Rename      Link   Symlink     Mkdir     Rmdir   Readdir  RdirPlus    Access
        0         0         0         0         0         0         0         0
    Mknod    Fsstat    Fsinfo  PathConf    Commit   LookupP   SetClId SetClIdCf
        0         0         0         0         0         0         0         0
     Open  OpenAttr OpenDwnGr  OpenCfrm DelePurge   DeleRet     GetFH      Lock
        0         0         0         0         0         0         0         0
    LockT     LockU     Close    Verify   NVerify     PutFH  PutPubFH PutRootFH
        0         0         0         0         0         0         0         0
    Renew RestoreFH    SaveFH   Secinfo RelLckOwn  V4Create
        0         0         0         0         0         0
Server:
Retfailed    Faults   Clients
        0         0         0
OpenOwner     Opens LockOwner     Locks    Delegs 
        0         0         0         0         0 
Server Cache Stats:
   Inprog      Idem  Non-idem    Misses CacheSize   TCPPeak
        0         0         0         0         0         0
" nfsstat -e
}

atf_test_case m_flag
m_flag_head()
{
	atf_set "descr" "Verify the usage of option 'm'"
}

m_flag_body()
{
	atf_check -s exit:0 -o empty nfsstat -m
}

atf_test_case s_flag
s_flag_head()
{
	atf_set "descr" "Verify the usage of option 's'"
}

s_flag_body()
{
	atf_check -s exit:0 -o inline:"
Server Info:
  Getattr   Setattr    Lookup  Readlink      Read     Write    Create    Remove
        0         0         0         0         0         0         0         0
   Rename      Link   Symlink     Mkdir     Rmdir   Readdir  RdirPlus    Access
        0         0         0         0         0         0         0         0
    Mknod    Fsstat    Fsinfo  PathConf    Commit
        0         0         0         0         0
Server Ret-Failed
                0
Server Faults
            0
Server Cache Stats:
   Inprog      Idem  Non-idem    Misses
        0         0         0         0
Server Write Gathering:
 WriteOps  WriteRPC   Opsaved
        0         0         0
" nfsstat -s
}

atf_test_case W_flag
W_flag_head()
{
	atf_set "descr" "Verify the usage of option 'W'"
}

W_flag_body()
{
	atf_check -s exit:0 -o inline:"Client Info:
Rpc Counts:
  Getattr   Setattr    Lookup  Readlink      Read     Write    Create    Remove
        0         0         0         0         0         0         0         0
   Rename      Link   Symlink     Mkdir     Rmdir   Readdir  RdirPlus    Access
        0         0         0         0         0         0         0         0
    Mknod    Fsstat    Fsinfo  PathConf    Commit
        0         0         0         0         0
Rpc Info:
 TimedOut   Invalid X Replies   Retries  Requests
        0         0         0         0         0
Cache Info:
Attr Hits    Misses Lkup Hits    Misses BioR Hits    Misses BioW Hits    Misses
        0         0         0         0         0         0         0         0
BioRLHits    Misses BioD Hits    Misses DirE Hits    Misses Accs Hits    Misses
        0         0         0         0         0         0         0         0

Server Info:
  Getattr   Setattr    Lookup  Readlink      Read     Write    Create    Remove
        0         0         0         0         0         0         0         0
   Rename      Link   Symlink     Mkdir     Rmdir   Readdir  RdirPlus    Access
        0         0         0         0         0         0         0         0
    Mknod    Fsstat    Fsinfo  PathConf    Commit
        0         0         0         0         0
Server Ret-Failed
                0
Server Faults
            0
Server Cache Stats:
   Inprog      Idem  Non-idem    Misses
        0         0         0         0
Server Write Gathering:
 WriteOps  WriteRPC   Opsaved
        0         0         0
" nfsstat -W
}

atf_test_case invalid_usage
invalid_usage_head()
{
	atf_set "descr" "Verify that an invalid usage with a supported option produces a valid error message"
}

invalid_usage_body()
{
	atf_check -s not-exit:0 -e inline:"nfsstat: illegal option -- d
usage: nfsstat [-cemszW] [-M core] [-N system] [-w wait]
" nfsstat -d
	atf_check -s not-exit:0 -e inline:"nfsstat: illegal option -- E
usage: nfsstat [-cemszW] [-M core] [-N system] [-w wait]
" nfsstat -E
	atf_check -s not-exit:0 -e inline:"nfsstat: option requires an argument -- M
usage: nfsstat [-cemszW] [-M core] [-N system] [-w wait]
" nfsstat -M
	atf_check -s not-exit:0 -e inline:"nfsstat: option requires an argument -- N
usage: nfsstat [-cemszW] [-M core] [-N system] [-w wait]
" nfsstat -N
	atf_check -s not-exit:0 -e inline:"nfsstat: option requires an argument -- w
usage: nfsstat [-cemszW] [-M core] [-N system] [-w wait]
" nfsstat -w
	atf_check -s not-exit:0 -e inline:"nfsstat: Can't get stats: Operation not permitted
" nfsstat -z
}

atf_test_case no_arguments
no_arguments_head()
{
	atf_set "descr" "Verify that nfsstat(1) executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:"Client Info:
Rpc Counts:
  Getattr   Setattr    Lookup  Readlink      Read     Write    Create    Remove
        0         0         0         0         0         0         0         0
   Rename      Link   Symlink     Mkdir     Rmdir   Readdir  RdirPlus    Access
        0         0         0         0         0         0         0         0
    Mknod    Fsstat    Fsinfo  PathConf    Commit
        0         0         0         0         0
Rpc Info:
 TimedOut   Invalid X Replies   Retries  Requests
        0         0         0         0         0
Cache Info:
Attr Hits    Misses Lkup Hits    Misses BioR Hits    Misses BioW Hits    Misses
        0         0         0         0         0         0         0         0
BioRLHits    Misses BioD Hits    Misses DirE Hits    Misses Accs Hits    Misses
        0         0         0         0         0         0         0         0

Server Info:
  Getattr   Setattr    Lookup  Readlink      Read     Write    Create    Remove
        0         0         0         0         0         0         0         0
   Rename      Link   Symlink     Mkdir     Rmdir   Readdir  RdirPlus    Access
        0         0         0         0         0         0         0         0
    Mknod    Fsstat    Fsinfo  PathConf    Commit
        0         0         0         0         0
Server Ret-Failed
                0
Server Faults
            0
Server Cache Stats:
   Inprog      Idem  Non-idem    Misses
        0         0         0         0
Server Write Gathering:
 WriteOps  WriteRPC   Opsaved
        0         0         0
" nfsstat
}

atf_init_test_cases()
{
	atf_add_test_case c_flag
	atf_add_test_case e_flag
	atf_add_test_case m_flag
	atf_add_test_case s_flag
	atf_add_test_case W_flag
	atf_add_test_case invalid_usage
	atf_add_test_case no_arguments
}
