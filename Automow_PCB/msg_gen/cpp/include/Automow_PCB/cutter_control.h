/* Auto-generated by genmsg_cpp for file /home/sparc/ros/stacks/Automow_PCB/msg/cutter_control.msg */
#ifndef AUTOMOW_PCB_MESSAGE_CUTTER_CONTROL_H
#define AUTOMOW_PCB_MESSAGE_CUTTER_CONTROL_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace Automow_PCB
{
template <class ContainerAllocator>
struct cutter_control_ {
  typedef cutter_control_<ContainerAllocator> Type;

  cutter_control_()
  : cutter_left(false)
  , cutter_right(false)
  {
  }

  cutter_control_(const ContainerAllocator& _alloc)
  : cutter_left(false)
  , cutter_right(false)
  {
  }

  typedef uint8_t _cutter_left_type;
  uint8_t cutter_left;

  typedef uint8_t _cutter_right_type;
  uint8_t cutter_right;


private:
  static const char* __s_getDataType_() { return "Automow_PCB/cutter_control"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "ef29873a12820d5fe3a8c2cccd3531f1"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "bool cutter_left\n\
bool cutter_right\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, cutter_left);
    ros::serialization::serialize(stream, cutter_right);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, cutter_left);
    ros::serialization::deserialize(stream, cutter_right);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(cutter_left);
    size += ros::serialization::serializationLength(cutter_right);
    return size;
  }

  typedef boost::shared_ptr< ::Automow_PCB::cutter_control_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Automow_PCB::cutter_control_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct cutter_control
typedef  ::Automow_PCB::cutter_control_<std::allocator<void> > cutter_control;

typedef boost::shared_ptr< ::Automow_PCB::cutter_control> cutter_controlPtr;
typedef boost::shared_ptr< ::Automow_PCB::cutter_control const> cutter_controlConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::Automow_PCB::cutter_control_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::Automow_PCB::cutter_control_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace Automow_PCB

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::Automow_PCB::cutter_control_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::Automow_PCB::cutter_control_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::Automow_PCB::cutter_control_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ef29873a12820d5fe3a8c2cccd3531f1";
  }

  static const char* value(const  ::Automow_PCB::cutter_control_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xef29873a12820d5fULL;
  static const uint64_t static_value2 = 0xe3a8c2cccd3531f1ULL;
};

template<class ContainerAllocator>
struct DataType< ::Automow_PCB::cutter_control_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Automow_PCB/cutter_control";
  }

  static const char* value(const  ::Automow_PCB::cutter_control_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::Automow_PCB::cutter_control_<ContainerAllocator> > {
  static const char* value() 
  {
    return "bool cutter_left\n\
bool cutter_right\n\
\n\
";
  }

  static const char* value(const  ::Automow_PCB::cutter_control_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::Automow_PCB::cutter_control_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::Automow_PCB::cutter_control_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.cutter_left);
    stream.next(m.cutter_right);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct cutter_control_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Automow_PCB::cutter_control_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::Automow_PCB::cutter_control_<ContainerAllocator> & v) 
  {
    s << indent << "cutter_left: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cutter_left);
    s << indent << "cutter_right: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cutter_right);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUTOMOW_PCB_MESSAGE_CUTTER_CONTROL_H

