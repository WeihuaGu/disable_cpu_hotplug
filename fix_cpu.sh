#!/system/bin/sh
sleep 30

while true; do
    echo 0 > /sys/devices/system/cpu/cpu0/core_ctl/enable
    echo 0 > /sys/devices/system/cpu/cpu4/core_ctl/enable

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

    sleep 10
done
