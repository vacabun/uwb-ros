
CURRENT_DIR=$(cd $(dirname $0); pwd)

WS_DIR=$(cd $(dirname $0);cd ..; pwd)


source $WS_DIR/install/setup.sh
source /opt/ros/humble/setup.sh

ros2 run uwb_locate uwb_location


