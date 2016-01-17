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
 * Auto-generated by genmsg_cpp from file /home/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayResult.msg
 *
 */


#ifndef KOMODO_SPEECH_MESSAGE_KOMODOSPEECHSAYRESULT_H
#define KOMODO_SPEECH_MESSAGE_KOMODOSPEECHSAYRESULT_H


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
struct KomodoSpeechSayResult_
{
  typedef KomodoSpeechSayResult_<ContainerAllocator> Type;

  KomodoSpeechSayResult_()
    : header()
    , success(false)
    , said_text()  {
    }
  KomodoSpeechSayResult_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , success(false)
    , said_text(_alloc)  {
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _said_text_type;
  _said_text_type said_text;




  typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> const> ConstPtr;

}; // struct KomodoSpeechSayResult_

typedef ::komodo_speech::KomodoSpeechSayResult_<std::allocator<void> > KomodoSpeechSayResult;

typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechSayResult > KomodoSpeechSayResultPtr;
typedef boost::shared_ptr< ::komodo_speech::KomodoSpeechSayResult const> KomodoSpeechSayResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace komodo_speech

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'komodo_speech': ['/home/komodo/komodo_speech/src/komodo_speech/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dcfc4a16970f2ac31b5c6eb8edf3edcf";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdcfc4a16970f2ac3ULL;
  static const uint64_t static_value2 = 0x1b5c6eb8edf3edcfULL;
};

template<class ContainerAllocator>
struct DataType< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "komodo_speech/KomodoSpeechSayResult";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
bool success            # Did the last \"say\" command succeed\n\
string said_text        # The text that was given as part of the \"say\" command  \n\
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

  static const char* value(const ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.success);
      stream.next(m.said_text);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct KomodoSpeechSayResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::komodo_speech::KomodoSpeechSayResult_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "said_text: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.said_text);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KOMODO_SPEECH_MESSAGE_KOMODOSPEECHSAYRESULT_H