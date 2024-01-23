# ros-ws

```shell
git submodule update --init --recursive
```

use https://github.com/Ar-Ray-code/rpi-bullseye-ros2 install ros2 on raspberry pi.


```
ros2 run uwb_ros_bridge bridge

ros2 service call /uwb_control uwb_interfaces/srv/UWBMeasure '{cmd: 1, src: 2, dest: 3}'

sudo minicom -b 115200 -8 -D /dev/ttyACM0
```