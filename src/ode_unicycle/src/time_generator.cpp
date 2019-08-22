#include "ros/ros.h"
#include "ode_unicycle/TimeSignal.h"
#include "std_msgs/String.h"
#include <string>
#include <sstream>
#include <cmath>

void HandleArgv(int argc,char** argv, std::string &NodeName, std::string &OutputName);

int main(int argc, char **argv)
{
  std::string nodeName, outputName;
  nodeName="time_generator";
  outputName="timeOutput";

  ros::init(argc, argv, nodeName.c_str());
  ros::NodeHandle node;
  ros::Publisher publisher = node.advertise<ode_unicycle::TimeSignal>(outputName.c_str(), 1000);
  ros::Rate loop_rate(1000);
  ros::Time beginTime = ros::Time::now();

  ode_unicycle::TimeSignal signal;
  while (ros::ok())
  {
    signal.timestamp = ros::Time::now() - beginTime;

    publisher.publish(signal);

    ros::spinOnce();
    loop_rate.sleep();
  }


  return 0;
}
