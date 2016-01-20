// Generated by gencpp from file komodo_speech/KomodoSpeechRunning.msg
// DO NOT EDIT!


#ifndef KOMODO_SPEECH_MESSAGE_KOMODOSPEECHRUNNING_H
#define KOMODO_SPEECH_MESSAGE_KOMODOSPEECHRUNNING_H

#include <ros/service_traits.h>


#include <komodo_speech/KomodoSpeechRunningRequest.h>
#include <komodo_speech/KomodoSpeechRunningResponse.h>


namespace komodo_speech
{

struct KomodoSpeechRunning
{

typedef KomodoSpeechRunningRequest Request;
typedef KomodoSpeechRunningResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct KomodoSpeechRunning
} // namespace komodo_speech


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::komodo_speech::KomodoSpeechRunning > {
  static const char* value()
  {
    return "14c43fbec2ed75ad470309f9d3538198";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechRunning&) { return value(); }
};

template<>
struct DataType< ::komodo_speech::KomodoSpeechRunning > {
  static const char* value()
  {
    return "komodo_speech/KomodoSpeechRunning";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechRunning&) { return value(); }
};


// service_traits::MD5Sum< ::komodo_speech::KomodoSpeechRunningRequest> should match 
// service_traits::MD5Sum< ::komodo_speech::KomodoSpeechRunning > 
template<>
struct MD5Sum< ::komodo_speech::KomodoSpeechRunningRequest>
{
  static const char* value()
  {
    return MD5Sum< ::komodo_speech::KomodoSpeechRunning >::value();
  }
  static const char* value(const ::komodo_speech::KomodoSpeechRunningRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::komodo_speech::KomodoSpeechRunningRequest> should match 
// service_traits::DataType< ::komodo_speech::KomodoSpeechRunning > 
template<>
struct DataType< ::komodo_speech::KomodoSpeechRunningRequest>
{
  static const char* value()
  {
    return DataType< ::komodo_speech::KomodoSpeechRunning >::value();
  }
  static const char* value(const ::komodo_speech::KomodoSpeechRunningRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::komodo_speech::KomodoSpeechRunningResponse> should match 
// service_traits::MD5Sum< ::komodo_speech::KomodoSpeechRunning > 
template<>
struct MD5Sum< ::komodo_speech::KomodoSpeechRunningResponse>
{
  static const char* value()
  {
    return MD5Sum< ::komodo_speech::KomodoSpeechRunning >::value();
  }
  static const char* value(const ::komodo_speech::KomodoSpeechRunningResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::komodo_speech::KomodoSpeechRunningResponse> should match 
// service_traits::DataType< ::komodo_speech::KomodoSpeechRunning > 
template<>
struct DataType< ::komodo_speech::KomodoSpeechRunningResponse>
{
  static const char* value()
  {
    return DataType< ::komodo_speech::KomodoSpeechRunning >::value();
  }
  static const char* value(const ::komodo_speech::KomodoSpeechRunningResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KOMODO_SPEECH_MESSAGE_KOMODOSPEECHRUNNING_H
