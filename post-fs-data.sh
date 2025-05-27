#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
sleep 5
echo 0 > /sys/devices/system/cpu/cpu0/core_ctl/enable
echo 0 > /sys/devices/system/cpu/cpu4/core_ctl/enable
# Lock all CPUs online
for i in /sys/devices/system/cpu/cpu*/online; do
    chmod 644 $i > /dev/null 2>&1
    echo 1 > $i
done

for j in 0 1 2 3; do
    echo "powersave" > /sys/devices/system/cpu/cpu${j}/cpufreq/scaling_governor
done
for k in 4 5 6 7; do
    echo "powersave" > /sys/devices/system/cpu/cpu${k}/cpufreq/scaling_governor
done
