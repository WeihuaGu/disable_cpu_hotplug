### 用途
文石的设备使用哪个过程中会出现时不时卡死，根据logcat是cpu热插拔的问题，所以刷入这个magisk模块可能能对这个卡顿起作用
### 使用
- 给设备安装magisk
- 刷入本模块
- 除了刷入本模块，最好在设备的/data/adb/service.d/文件夹下增加fix_cpu.sh,并且chmod a+x fix_cpu.sh确保运行
### 适用 
我的是note3,所以最好你也是骁龙636或者660



