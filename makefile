all:
	colcon build

simulation:
	colcon build --packages-select uwb_interfaces uwb_simulation

interfaces:
	colcon build --packages-select uwb_interfaces

locate:
	colcon build --packages-select uwb_interfaces uwb_locate

bridge:
	colcon build --packages-select uwb_interfaces uwb_ros_bridge

control:
	colcon build --packages-select uwb_interfaces uwb_control


locate:
	colcon build --packages-select uwb_interfaces uwb_locate

	mkdir -p $(CURDIR)/install/uwb_locate/share/uwb_locate/config/
	cp $(CURDIR)/config/anchor.xml $(CURDIR)/install/uwb_locate/share/uwb_locate/config/anchor.xml


clean:
	rm -rf $(CURDIR)/build $(CURDIR)/install $(CURDIR)/log $(CURDIR)/launch/__pycache__
