Sweetie Bot Proto2 movements
============================

This package is part of [Sweetie Bot project](sweetiebot.net). 

This package contains messages with movement trajectories, poses, movement planning requests stored in JSON format 
(`rospy_message_convertor`). They are meant to be loaded to ROS Parameter Server in serialized binary format before use 
to be accessed by parameter name.  It is usually done automatically by `sweetie_bot_deploy` package deployment scripts.

Message types: 
* `control_msgs::FollowJointTrajectoryGoal` in directory `joint_trajectories`.
    Note, that joints with `support/<kinematic_chain>` prefix has special meaning: they are defining contacts for corresponding kinematics chains.
* `sweetie_bot_clop_generator::MoveBaseGoal` in directory `move_base`.
* `sweetie_bot_control_msgs::FollowStepSequenceGoal` in directory `step_sequence`.
* `sensor_msgs::JointState` in directory `joint_state`.
* `sweetie_bot_text_msgs::CompoundAction` in directory `compound_action`.

Use `store` and `store-all` script from `sweetie_bot_deploy` to save/load messages from/to ROS Parameter Server.
`FollowJointTrajectoryGoal` can be created `sweetie_bot_trajectory_editor`. Use `gait_generator` to create 
`FollowStepSequenceGoal` and `MoveBaseGoal` messages.

