// Generated by gencpp from file komodo_speech/KomodoSpeechProcessing.msg
// DO NOT EDIT!


#ifndef KOMODO_SPEECH_MESSAGE_KOMODOSPEECHPROCESSING_H
#define KOMODO_SPEECH_MESSAGE_KOMODOSPEECHPROCESSING_H

#include <ros/service_traits.h>


#include <komodo_speech/KomodoSpeechProcessingRequest.h>
#include <komodo_speech/KomodoSpeechProcessingResponse.h>


namespace komodo_speech
{

struct KomodoSpeechProcessing
{

typedef KomodoSpeechProcessingRequest Request;
typedef KomodoSpeechProcessingResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct KomodoSpeechProcessing
} // namespace komodo_speech


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::komodo_speech::KomodoSpeechProcessing > {
  static const char* value()
  {
    return "14c43fbec2ed75ad470309f9d3538198";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechProcessing&) { return value(); }
};

template<>
struct DataType< ::komodo_speech::KomodoSpeechProcessing > {
  static const char* value()
  {
    return "komodo_speech/KomodoSpeechProcessing";
  }

  static const char* value(const ::komodo_speech::KomodoSpeechProcessing&) { return value(); }
};


// service_traits::MD5Sum< ::komodo_speech::KomodoSpeechProcessingRequest> should match 
// service_traits::MD5Sum< ::komodo_speech::KomodoSpeechProcessing > 
template<>
struct MD5Sum< ::komodo_speech::KomodoSpeechProcessingRequest>
{
  static const char* value()
  {
    return MD5Sum< ::komodo_speech::KomodoSpeechProcessing >::value();
  }
  static const char* value(const ::komodo_speech::KomodoSpeechProcessingRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::komodo_speech::KomodoSpeechProcessingRequest> should match 
// service_traits::DataType< ::komodo_speech::KomodoSpeechProcessing > 
template<>
struct DataType< ::komodo_speech::KomodoSpeechProcessingRequest>
{
  static const char* value()
  {
    return DataType< ::komodo_speech::KomodoSpeechProcessing >::value();
  }
  static const char* value(const ::komodo_speech::KomodoSpeechProcessingRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::komodo_speech::KomodoSpeechProcessingResponse> should match 
// service_traits::MD5Sum< ::komodo_speech::KomodoSpeechProcessing > 
template<>
struct MD5Sum< ::komodo_speech::KomodoSpeechProcessingResponse>
{
  static const char* value()
  {
    return MD5Sum< ::komodo_speech::KomodoSpeechProcessing >::value();
  }
  static const char* value(const ::komodo_speech::KomodoSpeechProcessingResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::komodo_speech::KomodoSpeechProcessingResponse> should match 
// service_traits::DataType< ::komodo_speech::KomodoSpeechProcessing > 
template<>
struct DataType< ::komodo_speech::KomodoSpeechProcessingResponse>
{
  static const char* value()
  {
    return DataType< ::komodo_speech::KomodoSpeechProcessing >::value();
  }
  static const char* value(const ::komodo_speech::KomodoSpeechProcessingResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KOMODO_SPEECH_MESSAGE_KOMODOSPEECHPROCESSING_H