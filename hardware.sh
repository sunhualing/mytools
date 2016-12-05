#/bin/bash

#1. Check the CPU Information and type
echo '1. Check the CPU Information and type'
cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c
#2. Check the CPU physical information
echo '2. Check the CPU physical information'
cat /proc/cpuinfo | grep physical | uniq -c

#3. Check the machine 64 bit or 32 bit
echo '3. Check the machine 64 bit or 32 bit'
getconf LONG_BIT

#4. Check whether the CPU support the long mode
echo '4. Check whether the CPU support the long mode'
cat /proc/cpuinfo | grep flags | grep ' lm ' | wc -l

#5. Check the CPU's Processor Information
echo '5. Check the CPUs Processor Information'
dmidecode | grep -A81 'Processor Information'

#6. Check the System Board Information
echo '6. Check the System Board Information'
dmidecode |grep -A16 "System Information$"

#7. Check the Memory Device information
echo '7. Check the Memory Device information'
dmidecode |grep -A16 "Memory Device$"

#8. Check the memory information
echo '8. Check the memory information'
cat /proc/meminfo

#9. Check the Linux kernel version
echo '9. Check the Linux kernel version'
uname -a

#10. Check the linux release version
echo '10. Check the linux release version'
cat /etc/issue | grep Linux

#11. Check the Linux release version
echo '11. Check the Linux release version'
cat /etc/redhat-release |grep Linux

#12. Check the Disk Information
echo '12. Check the Disk Information'
fdisk -l
smartctl -a /dev/sda


#13. Check the Ethernet Information
echo 'Check the Ethernet Information'
lspci -vvv |grep Ethernet
