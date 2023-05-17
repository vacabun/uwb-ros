all:
	colcon build

simulation:
	colcon build --packages-select uwb_interfaces uwb_simulation

interfaces:
	colcon build --packages-select uwb_interfaces

locate:
	colcon build --packages-select uwb_interfaces uwb_locate

clean:
	rm -rf $(CURDIR)/build $(CURDIR)/install $(CURDIR)/log $(CURDIR)/launch/__pycache__