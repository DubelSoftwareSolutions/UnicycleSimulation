/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/student/218549/RosWorkspace4/src/ode_unicycle/msg/StateSignal.msg
 *
 */


#ifndef ODE_UNICYCLE_MESSAGE_STATESIGNAL_H
#define ODE_UNICYCLE_MESSAGE_STATESIGNAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ode_unicycle
{
template <class ContainerAllocator>
struct StateSignal_
{
  typedef StateSignal_<ContainerAllocator> Type;

  StateSignal_()
    : x(0.0)
    , y(0.0)
    , fi(0.0)  {
    }
  StateSignal_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , fi(0.0)  {
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _fi_type;
  _fi_type fi;




  typedef boost::shared_ptr< ::ode_unicycle::StateSignal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ode_unicycle::StateSignal_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct StateSignal_

typedef ::ode_unicycle::StateSignal_<std::allocator<void> > StateSignal;

typedef boost::shared_ptr< ::ode_unicycle::StateSignal > StateSignalPtr;
typedef boost::shared_ptr< ::ode_unicycle::StateSignal const> StateSignalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ode_unicycle::StateSignal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ode_unicycle::StateSignal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ode_unicycle

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/hydro/share/std_msgs/cmake/../msg'], 'ode_unicycle': ['/home/student/218549/RosWorkspace4/src/ode_unicycle/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ode_unicycle::StateSignal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ode_unicycle::StateSignal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ode_unicycle::StateSignal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ode_unicycle::StateSignal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ode_unicycle::StateSignal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ode_unicycle::StateSignal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ode_unicycle::StateSignal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d0f3cc976890af134a6ee50472cd2a1e";
  }

  static const char* value(const ::ode_unicycle::StateSignal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd0f3cc976890af13ULL;
  static const uint64_t static_value2 = 0x4a6ee50472cd2a1eULL;
};

template<class ContainerAllocator>
struct DataType< ::ode_unicycle::StateSignal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ode_unicycle/StateSignal";
  }

  static const char* value(const ::ode_unicycle::StateSignal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ode_unicycle::StateSignal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n\
float32 y\n\
float32 fi\n\
";
  }

  static const char* value(const ::ode_unicycle::StateSignal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ode_unicycle::StateSignal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.fi);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct StateSignal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ode_unicycle::StateSignal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ode_unicycle::StateSignal_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "fi: ";
    Printer<float>::stream(s, indent + "  ", v.fi);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ODE_UNICYCLE_MESSAGE_STATESIGNAL_H
