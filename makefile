all:
	colcon build

simulation:
	colcon build --packages-select uwb_interfaces uwb_simulation

interfaces:
	colcon build --packages-select uwb_interfaces

bridge:
	colcon build --packages-select uwb_interfaces uwb_ros_bridge

control:
	colcon build --packages-select uwb_interfaces uwb_control

microxrcedds_agent:
	colcon build --packages-select microxrcedds_agent

locate:
	colcon build --packages-select uwb_interfaces uwb_locate
	# mkdir -p $(CURDIR)/install/uwb_locate/share/uwb_locate/config/
	# cp $(CURDIR)/config/anchor.xml $(CURDIR)/install/uwb_locate/share/uwb_locate/config/anchor.xml

bridge_sim:
	colcon build --packages-select uwb_interfaces uwb_ros_bridge_sim
visualizer:
	colcon build --packages-select px4_visualizer
clean:
	rm -rf $(CURDIR)/build $(CURDIR)/install $(CURDIR)/log $(CURDIR)/launch/__pycache__

px4_msgs:
	colcon build --packages-select px4_msgs
bridge_sim_test:
	ros2 launch uwb_ros_bridge_sim bridge_test.py
sim_anchor_test:
	ros2 launch uwb_control controller_test_sim_anchor.launch.py
locate_test:
	ros2 launch uwb_locate locate_test.launch.py
sim_test:
	ros2 launch uwb_control controller_test_sim.launch.py