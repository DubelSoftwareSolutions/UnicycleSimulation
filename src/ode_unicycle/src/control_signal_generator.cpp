#include "ros/ros.h"
#include "ode_unicycle/ControlSignal.h"
#include "ode_unicycle/TimeSignal.h"
#include <string>
#include <sstream>
#include <cmath>

ros::Subscriber subscriber;
ros::Publisher publisher;

void inputCallback(const ode_unicycle::TimeSignal::ConstPtr& signal);

int main(int argc, char **argv)
{
  std::string nodeName, inputName, outputName;
  nodeName="control_signal_generator";
  inputName="timeInput";
  outputName="signalOutput";

  ros::init(argc, argv, nodeName);
  ros::NodeHandle node;

  subscriber = node.subscribe(inputName.c_str(), 1000, inputCallback,ros::TransportHints().tcpNoDelay(true));
  publisher = node.advertise<ode_unicycle::ControlSignal>(outputName.c_str(), 1000);
  
  ros::spin();

  return 0;
}

void inputCallback(const ode_unicycle::TimeSignal::ConstPtr& signal)
{
	ode_unicycle::ControlSignal outSignal;
	double timeSeconds = signal->timestamp.toSec();
	outSignal.u1 = 0.0 * timeSeconds + 2.0;
	outSignal.u2 = 0.0;
    publisher.publish(outSignal);
}
