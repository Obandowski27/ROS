// Generated by gencpp from file messages/SetLedResponse.msg
// DO NOT EDIT!


#ifndef MESSAGES_MESSAGE_SETLEDRESPONSE_H
#define MESSAGES_MESSAGE_SETLEDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace messages
{
template <class ContainerAllocator>
struct SetLedResponse_
{
  typedef SetLedResponse_<ContainerAllocator> Type;

  SetLedResponse_()
    : success(false)  {
    }
  SetLedResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::messages::SetLedResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::messages::SetLedResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetLedResponse_

typedef ::messages::SetLedResponse_<std::allocator<void> > SetLedResponse;

typedef boost::shared_ptr< ::messages::SetLedResponse > SetLedResponsePtr;
typedef boost::shared_ptr< ::messages::SetLedResponse const> SetLedResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::messages::SetLedResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::messages::SetLedResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::messages::SetLedResponse_<ContainerAllocator1> & lhs, const ::messages::SetLedResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::messages::SetLedResponse_<ContainerAllocator1> & lhs, const ::messages::SetLedResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace messages

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::messages::SetLedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::messages::SetLedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::messages::SetLedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::messages::SetLedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::SetLedResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::SetLedResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::messages::SetLedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::messages::SetLedResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::messages::SetLedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "messages/SetLedResponse";
  }

  static const char* value(const ::messages::SetLedResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::messages::SetLedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
;
  }

  static const char* value(const ::messages::SetLedResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::messages::SetLedResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetLedResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::messages::SetLedResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::messages::SetLedResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MESSAGES_MESSAGE_SETLEDRESPONSE_H
