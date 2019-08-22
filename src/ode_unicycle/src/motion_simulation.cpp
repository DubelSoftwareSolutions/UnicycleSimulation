#include "ros/ros.h"
#include "ode_unicycle/TimeSignal.h"
#include "ode_unicycle/ControlSignal.h"
#include "ode_unicycle/StateSignal.h"
#include "ode_unicycle/SetInitialState.h"
#include <string>
#include <sstream>
#include <cmath>
#include <cvodes/cvodes.h>
#include <nvector/nvector_serial.h>
#include <cvodes/cvodes_dense.h>

#define RELTOL RCONST(1.0e-3)
#define ABSTOL RCONST(1.0e-4)

#define CONTROL_DIMENSIONS 2
#define STATE_DIMENSIONS 3

void *cvode_mem;

ros::Subscriber subscriber1, subscriber2;
ros::Publisher publisher;
ros::ServiceServer service;
ode_unicycle::StateSignal initialState;
double timeSeconds;

void inputCallbackTime(const ode_unicycle::TimeSignal::ConstPtr& signal);
void inputCallbackControl(const ode_unicycle::ControlSignal::ConstPtr& signal);

bool setInitialState(ode_unicycle::SetInitialState::Request &req,
					 ode_unicycle::SetInitialState::Response &res);
ode_unicycle::StateSignal solveMotionEquations(const ode_unicycle::ControlSignal::ConstPtr& signal);

void MotionEquations(realtype t, N_Vector q, N_Vector dq, void *prm);

int main(int argc, char **argv)
{
  std::string nodeName, inputName1, inputName2, outputName;
  nodeName="motion_simulation";
  inputName1="timeInput";
  inputName2="controlInput";
  outputName="stateOutput";
  
  initialState.x = 0.0;
  initialState.y = 0.0;
  initialState.fi = 0.0;

  ros::init(argc, argv, nodeName);
  ros::NodeHandle node;

  subscriber1 = node.subscribe(inputName1.c_str(), 1000, inputCallbackTime,ros::TransportHints().tcpNoDelay(true));
  subscriber2 = node.subscribe(inputName2.c_str(), 1000, inputCallbackControl,ros::TransportHints().tcpNoDelay(true));
  publisher = node.advertise<ode_unicycle::StateSignal>(outputName.c_str(), 1000);
  service = node.advertiseService("set_initial_state",setInitialState);
  ros::spin();

  return 0;
}

void inputCallbackTime(const ode_unicycle::TimeSignal::ConstPtr& signal)
{
	timeSeconds = signal->timestamp.toSec();
}

void inputCallbackControl(const ode_unicycle::ControlSignal::ConstPtr& signal)
{
	ode_unicycle::StateSignal outSignal;
	outSignal = solveMotionEquations(signal);
    publisher.publish(outSignal);
}

bool setInitialState(ode_unicycle::SetInitialState::Request &req,
					 ode_unicycle::SetInitialState::Response &res)
{
	initialState.x = req.x0;
	initialState.y = req.y0;
	initialState.fi = req.fi0;
	res.x0 = initialState.x;
	res.y0 = initialState.y;
	res.fi0 = initialState.fi;
	return true;
}

ode_unicycle::StateSignal solveMotionEquations(const ode_unicycle::ControlSignal::ConstPtr& signal)
{
	ode_unicycle::StateSignal PlatformState;
	/*cvode_mem = CVodeCreate(CV_ADAMS, CV_FUNCTIONAL);
	if(cvode_mem == NULL)
	{
		ROS_ERROR("Memory Not Allocated");
		PlatformState.x = initialState.x;
		PlatformState.y = initialState.y;
		PlatformState.fi = initialState.fi;
		return PlatformState;
	}
	CVodeInit(cvode_mem, fun, TB, q);
	CVodeSStolerances(cvode_mem, RELTOL, ABSTOL);
	CVodeSetUserData(cvode_mem, &prm);
	CVDense(cvode_mem, N);
	CVode(cvode_mem, T, q, &t, CV_NORMAL);  
	PlatformState.x = NV_Ith_S(q,0);
	PlatformState.y = NV_Ith_S(q,1);
	PlatformState.fi = NV_Ith_S(q,2);
	N_VDestroy_Serial(q);
	CVodeFree(&cvode_mem);*/
	return PlatformState;
}

void MotionEquations(realtype t, N_Vector q, N_Vector dq, void *prm)
{
 /* realtype  x, y, phi;
  realtype  dx, dy, dphi;
  realtype  u1, u2;
  sPrm     *lprm;
  
  x = NV_Ith_S(q,0);
  y = NV_Ith_S(q,1);
  phi = NV_Ith_S(q,2);

  lprm = (sPrm*)prm;
  u1 = lprm->u[0];
  u2 = lprm->u[1];

  dx = cos(phi) * u1;
  dy = sin(phi) * u1;
  dphi = u2;

  NV_Ith_S(dq,0) = dx;
  NV_Ith_S(dq,1) = dy;
  NV_Ith_S(dq,2) = dphi;*/
}
