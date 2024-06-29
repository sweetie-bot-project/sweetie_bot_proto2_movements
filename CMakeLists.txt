cmake_minimum_required(VERSION 3.6)
project(sweetie_bot_proto2_movements)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED)


## catkin specific configuration ##
###################################
catkin_package()


#############
## Install ##
#############

## Mark other files for installation (e.g. launch and bag files, etc.)
install(DIRECTORY 
	joint_trajectories step_sequence joint_state move_base compound_action
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

