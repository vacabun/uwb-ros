from launch import LaunchDescription
from launch_ros.actions import Node


def generate_launch_description():

    ld = LaunchDescription()
    anchors_str = '11'
    node1 = Node(
        package='uwb_control',      # 节点的包名
        executable='controller',     # 节点的可执行文件名
        name='uwb_controller_1',                # 节点的名称
        output='screen',              # 输出日志到屏幕
        parameters=[{'anchor_list': anchors_str}]
    )
    ld.add_action(node1)

    # node2 = Node(
    #     package='uwb_control',      # 节点的包名
    #     executable='controller',     # 节点的可执行文件名
    #     name='uwb_controller_2',                # 节点的名称
    #     output='screen',              # 输出日志到屏幕
    #     parameters=[{'anchor_list': anchors_str}]
    # )
    # ld.add_action(node2)

    node3 = Node(
        package='uwb_ros_bridge',      # 节点的包名
        executable='bridge',     # 节点的可执行文件名
        name='uwb_ros_bridge_0',                # 节点的名称
        output='screen',              # 输出日志到屏幕
        parameters=[{'serial_file_path': '/dev/ttyACM1'}]
    )
    ld.add_action(node3)

    return ld
