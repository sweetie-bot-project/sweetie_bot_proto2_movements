SAVE_PATH=`rospack find sweetie_bot_proto2_movements`
rosservice call /clop_generator/save_trajectory "name: '$1'"
rosrun sweetie_bot_deploy store save FSS /saved_msgs/step_sequence/$1 $SAVE_PATH/joint_trajectories/$1.json
rosrun sweetie_bot_deploy store save MB /saved_msgs/move_base/$1 $SAVE_PATH/move_base/$1.json
