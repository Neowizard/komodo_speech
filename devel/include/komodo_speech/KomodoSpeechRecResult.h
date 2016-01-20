// Generated by gencpp from file komodo_speech/KomodoSpeechRecResult.msg
// DO NOT EDIT!


#ifndef KOMODO_SPEECH_MESSAGE_KOMODOSPEECHRECRESULT_H
#define KOMODO_SPEECH_MESSAGE_KOMODOSPEECHRECRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace komodo_speech
{
template <class ContainerAllocator>
struct KomodoSpeechRecResult_
{
  typedef KomodoSpeechRecResult_<ContainerAllocator> Type;

  KomodoSpeechRecResult_()
    : header()
    , success(false)
    , phrase_id(0)
    , phrase()  {
    }
  KomodoSpeechRecResult_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , success(false)
    , phrase_id(0)
    , phrase(_alloc)  {
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _success_type;
  _success_type success;

   typedef uint8_t _phrase_id_type;
  _phrase_id_type phrase_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _phrase_type;
  _phrase_type phrase;


    enum { PHRASE_NULL = 255u };
     enum { PHRASE_AT_FLOOR_1 = 1u };
     enum { PHRASE_AT_FLOOR_2 = 2u };
     enum { PHRASE_AT_FLOOR_3 = 3u };
     enum { PHRASE_AT_FLOOR_4 = 4u };
     enum { PHRASE_AT_FLOOR_5 = 5u };
     enum { PHRASE_YES = 6u };
     enum { PHRASE_NO = 7u };
     enum { PHRASE_GET_COFFEE = 8u };
     enum { PHRASE_MOVE_FORWARD = 9u };
     enum { PHRASE_HERE_YOU_GO = 10u };
 

  typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> const> ConstPtr;

}; // struct KomodoSpeechRecResult_

typedef ::komodo_speech::KomodoSpeechRecResult_<std::allocator<void> > KomodoSpeechRecResult;

typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechRecResult > KomodoSpeechRecResultPtr;
typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechRecResult const> KomodoSpeechRecResultConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace komodo_speech

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'komodo_speech': ['/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg'], 'std_msgs': ['/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9a1e790e35de3c5c1e99713cc150ec87";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9a1e790e35de3c5cULL;
  static const uint64_t static_value2 = 0x1e99713cc150ec87ULL;
};

template<class ContainerAllocator>
struct DataType< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "komodo_speech/KomodoSpeechRecResult";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
bool success               # Did the recognition command complete successfully\n\
\n\
# Recognized phrases\n\
uint8 PHRASE_NULL=255      # Couldn't indentify phrase\n\
\n\
uint8 PHRASE_AT_FLOOR_1=1     \n\
uint8 PHRASE_AT_FLOOR_2=2\n\
uint8 PHRASE_AT_FLOOR_3=3\n\
uint8 PHRASE_AT_FLOOR_4=4\n\
uint8 PHRASE_AT_FLOOR_5=5\n\
\n\
uint8 PHRASE_YES=6\n\
uint8 PHRASE_NO=7\n\
\n\
uint8 PHRASE_GET_COFFEE=8\n\
uint8 PHRASE_MOVE_FORWARD=9\n\
uint8 PHRASE_HERE_YOU_GO=10\n\
\n\
uint8 phrase_id               # ID of recognized phrase. \n\
string phrase               # If phrase_id=PHRASE_NULL, this will hold the recognized phrase as string\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.success);
      stream.next(m.phrase_id);
      stream.next(m.phrase);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct KomodoSpeechRecResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::komodo_speech::KomodoSpeechRecResult_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "phrase_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.phrase_id);
    s << indent << "phrase: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.phrase);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KOMODO_SPEECH_MESSAGE_KOMODOSPEECHRECRESULT_H
