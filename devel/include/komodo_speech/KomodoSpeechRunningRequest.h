// Generated by gencpp from file komodo_speech/KomodoSpeechRunningRequest.msg
// DO NOT EDIT!


#ifndef KOMODO_SPEECH_MESSAGE_KOMODOSPEECHRUNNINGREQUEST_H
#define KOMODO_SPEECH_MESSAGE_KOMODOSPEECHRUNNINGREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace komodo_speech
{
template <class ContainerAllocator>
struct KomodoSpeechRunningRequest_
{
  typedef KomodoSpeechRunningRequest_<ContainerAllocator> Type;

  KomodoSpeechRunningRequest_()
    {
    }
  KomodoSpeechRunningRequest_(const ContainerAllocator& _alloc)
    {
    }






  typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> const> ConstPtr;

}; // struct KomodoSpeechRunningRequest_

typedef ::komodo_speech::KomodoSpeechRunningRequest_<std::allocator<void> > KomodoSpeechRunningRequest;

typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechRunningRequest > KomodoSpeechRunningRequestPtr;
typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechRunningRequest const> KomodoSpeechRunningRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace komodo_speech

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'komodo_speech': ['/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg'], 'std_msgs': ['/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "komodo_speech/KomodoSpeechRunningRequest";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct KomodoSpeechRunningRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::komodo_speech::KomodoSpeechRunningRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // KOMODO_SPEECH_MESSAGE_KOMODOSPEECHRUNNINGREQUEST_H
