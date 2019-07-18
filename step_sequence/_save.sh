rosservice call /clop_generator/save_trajectory "name: '$1'"
rosrun sweetie_bot_deploy store save FSS /saved_msgs/step_sequence/$1 $1.json
