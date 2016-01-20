// Generated by gencpp from file komodo_speech/KomodoSpeechSayCommand.msg
// DO NOT EDIT!


#ifndef KOMODO_SPEECH_MESSAGE_KOMODOSPEECHSAYCOMMAND_H
#define KOMODO_SPEECH_MESSAGE_KOMODOSPEECHSAYCOMMAND_H


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
struct KomodoSpeechSayCommand_
{
  typedef KomodoSpeechSayCommand_<ContainerAllocator> Type;

  KomodoSpeechSayCommand_()
    : header()
    , text_to_say()  {
    }
  KomodoSpeechSayCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , text_to_say(_alloc)  {
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _text_to_say_type;
  _text_to_say_type text_to_say;




  typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> const> ConstPtr;

}; // struct KomodoSpeechSayCommand_

typedef ::komodo_speech::KomodoSpeechSayCommand_<std::allocator<void> > KomodoSpeechSayCommand;

typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechSayCommand > KomodoSpeechSayCommandPtr;
typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechSayCommand const> KomodoSpeechSayCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ca02ab5da1cc249bfc8fa9e0159e79d8";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xca02ab5da1cc249bULL;
  static const uint64_t static_value2 = 0xfc8fa9e0159e79d8ULL;
};

template<class ContainerAllocator>
struct DataType< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "komodo_speech/KomodoSpeechSayCommand";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
string text_to_say # Phrase to synthesize into speech\n\
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

  static const char* value(const ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.text_to_say);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct KomodoSpeechSayCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::komodo_speech::KomodoSpeechSayCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "text_to_say: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.text_to_say);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KOMODO_SPEECH_MESSAGE_KOMODOSPEECHSAYCOMMAND_H