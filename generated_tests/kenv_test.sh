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
	atf_set "descr" "Verify that kenv executes successfully and produces a valid output when invoked without any arguments"
}

no_arguments_body()
{
	atf_check -s exit:0 -o inline:'LINES="24"
acpi.oem="VBOX  "
acpi.revision="2"
acpi.rsdp="0x000e0000"
acpi.rsdt="0x3fff0000"
acpi.xsdt="0x000000003fff0030"
acpi.xsdt_length="36"
beansi_bootfs="^[1mbootfs: ^[m"
beansi_current="^[1mActive: ^[m"
beansi_page="^[1mP^[mage: "
beansi_pageof=" of "
bemenu_bootfs="bootfs: "
bemenu_current="Active: "
bemenu_page="[P]age: "
bemenu_pageof=" of "
bootenv_autolist="YES"
bootenv_root[2]=""
bootenvmenu_command[1]="be_draw_screen 1 goto_menu"
bootenvmenu_command[2]="set_bootenv"
bootenvmenu_command[3]="set_be_page"
bootenvmenu_init="init_bootenv"
bootenvmenu_keycode[1]="8"
bootenvmenu_keycode[2]="97"
bootenvmenu_keycode[3]="112"
bootenvmenu_options="4"
bootenvmenu_optionstext="Boot Environments:"
bootfile="kernel"
comconsole_pcidev=""
comconsole_port="1016"
comconsole_speed="9600"
console="vidconsole"
currdev="disk0s1a:"
hint.acpi.0.oem="VBOX  "
hint.acpi.0.revision="2"
hint.acpi.0.rsdp="0x000e0000"
hint.acpi.0.rsdt="0x3fff0000"
hint.acpi.0.xsdt="0x000000003fff0030"
hint.acpi.0.xsdt_length="36"
hint.acpi_throttle.0.disabled="1"
hint.atkbd.0.at="atkbdc"
hint.atkbd.0.irq="1"
hint.atkbdc.0.at="isa"
hint.atkbdc.0.port="0x060"
hint.atrtc.0.at="isa"
hint.atrtc.0.irq="8"
hint.atrtc.0.port="0x70"
hint.attimer.0.at="isa"
hint.attimer.0.irq="0"
hint.attimer.0.port="0x40"
hint.fd.0.at="fdc0"
hint.fd.0.drive="0"
hint.fd.1.at="fdc0"
hint.fd.1.drive="1"
hint.fdc.0.at="isa"
hint.fdc.0.drq="2"
hint.fdc.0.irq="6"
hint.fdc.0.port="0x3F0"
hint.p4tcc.0.disabled="1"
hint.ppc.0.at="isa"
hint.ppc.0.irq="7"
hint.psm.0.at="atkbdc"
hint.psm.0.irq="12"
hint.sc.0.at="isa"
hint.sc.0.flags="0x100"
hint.uart.0.at="isa"
hint.uart.0.flags="0x10"
hint.uart.0.irq="4"
hint.uart.0.port="0x3F8"
hint.uart.1.at="isa"
hint.uart.1.irq="3"
hint.uart.1.port="0x2F8"
interpret="OK"
kernel="kernel"
kernel[0]="kernel"
kernel[1]="kernel.old"
kernel_options=""
kernelname="/boot/kernel/kernel"
loaddev="disk0s1a:"
loader_conf_files="/boot/device.hints /boot/loader.conf /boot/loader.conf.local"
mac_ifoff="NO"
module_path="/boot/kernel;/boot/modules"
pcibios.config1="1"
pcibios.config2="0"
pcibios.major="2"
pcibios.maxbus="0"
pcibios.minor="0"
smbios.bios.reldate="12/01/2006"
smbios.bios.vendor="innotek GmbH"
smbios.bios.version="VirtualBox"
smbios.chassis.maker="Oracle Corporation"
smbios.planar.maker="Oracle Corporation"
smbios.planar.product="VirtualBox"
smbios.planar.serial="0"
smbios.planar.version="1.2"
smbios.system.maker="innotek GmbH"
smbios.system.product="VirtualBox"
smbios.system.serial="0"
smbios.system.uuid="aec5f525-cd19-46cc-88f7-f7ee0bcc1437"
smbios.system.version="1.2"
smbios.version="2.5"
temp_options=""
twiddle_divisor="1"
vfs.root.mountfrom="ufs:/dev/ada0s1a"
vfs.root.mountfrom.options="rw,acls"
zfs_be_currpage="1"
' kenv
}

atf_init_test_cases()
{
	atf_add_test_case no_arguments
}
