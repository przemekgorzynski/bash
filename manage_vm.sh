#!/bin/bash

#name=VM
#memory=512
#vcpus=1
#dssize=1
cdrom=/home/przemek/Downloads/CentOS-7-x86_64-Minimal-1810.iso
#osvariant=rhel7


function cr ()                #creating VM
{
read -p '--name ' name
read -p '--memory ' memory
read -p '--vcpus ' vcpus
read -p '--disk size ' dssize
#read -p '--cdrom ' cdrom
read -p '--os-variant ' osvariant 
nohup virt-install --name "$name" --memory "$memory" --vcpus "$vcpus" --disk size="$dssize" --cdrom "$cdrom" --os-variant "$osvariant" &
}

function chk ()             #checking existing VM
{
existing=`virsh list --all`
echo "$existing"
}

function del ()              #deleting VM
{
printf "wybierz maszyne do usuniecia: \n `virsh list --all | head -3 | tail -1  | awk -F" " '{print $2}'` \n"
read -p 'Name:' Name
vm_state=`virsh list --all | grep $Name | awk '{print $3}'`

	if [ $vm_state == "running" ]; then
	  nohup virsh destroy $Name 2>/dev/null &
	  nohup virsh undefine $Name 2>/dev/null  &
	  plik=/var/lib/libvirt/images/openbsd.qcow2
	   	if [ -e $plik ];then rm $plik ;else : ; fi
	else 
	  nohup virsh undefine $Name
	  plik=/var/lib/libvirt/images/openbsd.qcow2
            	if [ -e $plik ];then rm $plik ;else : ; fi
	fi 
}

echo " Jaka operacje na Wirtualnych maszynach chcesz wykonac ?"
printf " 1) stworz wirtualna maszyne \n 2) wyswietl wirtualne maszyny \n 3) usun wirtualna maszyne \n " 
read choice 


if [ $choice == "1" ]; then
	cr
elif [ $choice == "2" ]; then
	chk
elif [ $choice == "3" ]; then
	del
fi
