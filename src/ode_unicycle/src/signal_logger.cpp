#include "ros/ros.h"
#include "ode_unicycle/StateSignal.h"
#include "ode_unicycle/TimeSignal.h"
#include "std_msgs/String.h"

#include <string>
#include <fstream>

std::ofstream file;
std::string fileName;
ros::Duration timestamp;

void HandleArgv(int argc,char** argv, std::string &NodeName, 
		std::string &InputName, std::string &FileName);
void inputCallbackSignal(const ode_unicycle::StateSignal::ConstPtr& signal);
void inputCallbackTime(const ode_unicycle::TimeSignal::ConstPtr& signal);

int main(int argc, char **argv)
{
	timestamp=ros::Duration();
  std::string nodeName, SignalInputName, TimeInputName;
  nodeName="signal_logger";
  TimeInputName="timeIn";
  SignalInputName="logIn";

  ros::init(argc, argv, nodeName.c_str());
  ros::NodeHandle node;
  
  ros::param::get("~fileName", fileName);

  file.open(fileName.c_str());
  file.close();

  ros::Subscriber timeSub = node.subscribe(TimeInputName, 1000, inputCallbackTime,ros::TransportHints().tcpNoDelay(true));
  ros::Subscriber signalSub = node.subscribe(SignalInputName, 1000, inputCallbackSignal,ros::TransportHints().tcpNoDelay(true));
  ros::spin();

  return 0;
}

void inputCallbackSignal(const ode_unicycle::StateSignal::ConstPtr& signal)
{
	file.open(fileName.c_str(),std::ofstream::out | std::ofstream::app);
	file<<timestamp.toSec()<<' '<<signal->x << ' '<<signal->y<< ' '<<signal->fi<< ' ' <<std::endl;
	file.close();
}

void inputCallbackTime(const ode_unicycle::TimeSignal::ConstPtr& signal)
{
	timestamp = signal->timestamp;
}
