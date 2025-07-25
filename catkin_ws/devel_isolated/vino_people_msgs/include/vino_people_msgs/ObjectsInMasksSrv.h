// Generated by gencpp from file vino_people_msgs/ObjectsInMasksSrv.msg
// DO NOT EDIT!


#ifndef VINO_PEOPLE_MSGS_MESSAGE_OBJECTSINMASKSSRV_H
#define VINO_PEOPLE_MSGS_MESSAGE_OBJECTSINMASKSSRV_H

#include <ros/service_traits.h>


#include <vino_people_msgs/ObjectsInMasksSrvRequest.h>
#include <vino_people_msgs/ObjectsInMasksSrvResponse.h>


namespace vino_people_msgs
{

struct ObjectsInMasksSrv
{

typedef ObjectsInMasksSrvRequest Request;
typedef ObjectsInMasksSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ObjectsInMasksSrv
} // namespace vino_people_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vino_people_msgs::ObjectsInMasksSrv > {
  static const char* value()
  {
    return "2eb0e72b76147af62838f5a194b1b59d";
  }

  static const char* value(const ::vino_people_msgs::ObjectsInMasksSrv&) { return value(); }
};

template<>
struct DataType< ::vino_people_msgs::ObjectsInMasksSrv > {
  static const char* value()
  {
    return "vino_people_msgs/ObjectsInMasksSrv";
  }

  static const char* value(const ::vino_people_msgs::ObjectsInMasksSrv&) { return value(); }
};


// service_traits::MD5Sum< ::vino_people_msgs::ObjectsInMasksSrvRequest> should match
// service_traits::MD5Sum< ::vino_people_msgs::ObjectsInMasksSrv >
template<>
struct MD5Sum< ::vino_people_msgs::ObjectsInMasksSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vino_people_msgs::ObjectsInMasksSrv >::value();
  }
  static const char* value(const ::vino_people_msgs::ObjectsInMasksSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vino_people_msgs::ObjectsInMasksSrvRequest> should match
// service_traits::DataType< ::vino_people_msgs::ObjectsInMasksSrv >
template<>
struct DataType< ::vino_people_msgs::ObjectsInMasksSrvRequest>
{
  static const char* value()
  {
    return DataType< ::vino_people_msgs::ObjectsInMasksSrv >::value();
  }
  static const char* value(const ::vino_people_msgs::ObjectsInMasksSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vino_people_msgs::ObjectsInMasksSrvResponse> should match
// service_traits::MD5Sum< ::vino_people_msgs::ObjectsInMasksSrv >
template<>
struct MD5Sum< ::vino_people_msgs::ObjectsInMasksSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vino_people_msgs::ObjectsInMasksSrv >::value();
  }
  static const char* value(const ::vino_people_msgs::ObjectsInMasksSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vino_people_msgs::ObjectsInMasksSrvResponse> should match
// service_traits::DataType< ::vino_people_msgs::ObjectsInMasksSrv >
template<>
struct DataType< ::vino_people_msgs::ObjectsInMasksSrvResponse>
{
  static const char* value()
  {
    return DataType< ::vino_people_msgs::ObjectsInMasksSrv >::value();
  }
  static const char* value(const ::vino_people_msgs::ObjectsInMasksSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VINO_PEOPLE_MSGS_MESSAGE_OBJECTSINMASKSSRV_H
