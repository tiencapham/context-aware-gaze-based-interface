// Generated by gencpp from file vino_people_msgs/LicensePlate.msg
// DO NOT EDIT!


#ifndef VINO_PEOPLE_MSGS_MESSAGE_LICENSEPLATE_H
#define VINO_PEOPLE_MSGS_MESSAGE_LICENSEPLATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/RegionOfInterest.h>

namespace vino_people_msgs
{
template <class ContainerAllocator>
struct LicensePlate_
{
  typedef LicensePlate_<ContainerAllocator> Type;

  LicensePlate_()
    : license()
    , roi()  {
    }
  LicensePlate_(const ContainerAllocator& _alloc)
    : license(_alloc)
    , roi(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _license_type;
  _license_type license;

   typedef  ::sensor_msgs::RegionOfInterest_<ContainerAllocator>  _roi_type;
  _roi_type roi;





  typedef boost::shared_ptr< ::vino_people_msgs::LicensePlate_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vino_people_msgs::LicensePlate_<ContainerAllocator> const> ConstPtr;

}; // struct LicensePlate_

typedef ::vino_people_msgs::LicensePlate_<std::allocator<void> > LicensePlate;

typedef boost::shared_ptr< ::vino_people_msgs::LicensePlate > LicensePlatePtr;
typedef boost::shared_ptr< ::vino_people_msgs::LicensePlate const> LicensePlateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vino_people_msgs::LicensePlate_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vino_people_msgs::LicensePlate_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::vino_people_msgs::LicensePlate_<ContainerAllocator1> & lhs, const ::vino_people_msgs::LicensePlate_<ContainerAllocator2> & rhs)
{
  return lhs.license == rhs.license &&
    lhs.roi == rhs.roi;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::vino_people_msgs::LicensePlate_<ContainerAllocator1> & lhs, const ::vino_people_msgs::LicensePlate_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace vino_people_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::vino_people_msgs::LicensePlate_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vino_people_msgs::LicensePlate_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vino_people_msgs::LicensePlate_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vino_people_msgs::LicensePlate_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vino_people_msgs::LicensePlate_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vino_people_msgs::LicensePlate_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vino_people_msgs::LicensePlate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9f2ce3fb55119e4895bc306c2c2007a3";
  }

  static const char* value(const ::vino_people_msgs::LicensePlate_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9f2ce3fb55119e48ULL;
  static const uint64_t static_value2 = 0x95bc306c2c2007a3ULL;
};

template<class ContainerAllocator>
struct DataType< ::vino_people_msgs::LicensePlate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vino_people_msgs/LicensePlate";
  }

  static const char* value(const ::vino_people_msgs::LicensePlate_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vino_people_msgs::LicensePlate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Copyright (c) 2018 Intel Corporation\n"
"#\n"
"# Licensed under the Apache License, Version 2.0 (the \"License\");\n"
"# you may not use this file except in compliance with the License.\n"
"# You may obtain a copy of the License at\n"
"#\n"
"#      http://www.apache.org/licenses/LICENSE-2.0\n"
"#\n"
"# Unless required by applicable law or agreed to in writing, software\n"
"# distributed under the License is distributed on an \"AS IS\" BASIS,\n"
"# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n"
"# See the License for the specific language governing permissions and\n"
"# limitations under the License.\n"
"\n"
"string license                     # The license for the detected vehicle in roi\n"
"sensor_msgs/RegionOfInterest roi   # region of interest for a vehicle license\n"
"================================================================================\n"
"MSG: sensor_msgs/RegionOfInterest\n"
"# This message is used to specify a region of interest within an image.\n"
"#\n"
"# When used to specify the ROI setting of the camera when the image was\n"
"# taken, the height and width fields should either match the height and\n"
"# width fields for the associated image; or height = width = 0\n"
"# indicates that the full resolution image was captured.\n"
"\n"
"uint32 x_offset  # Leftmost pixel of the ROI\n"
"                 # (0 if the ROI includes the left edge of the image)\n"
"uint32 y_offset  # Topmost pixel of the ROI\n"
"                 # (0 if the ROI includes the top edge of the image)\n"
"uint32 height    # Height of ROI\n"
"uint32 width     # Width of ROI\n"
"\n"
"# True if a distinct rectified ROI should be calculated from the \"raw\"\n"
"# ROI in this message. Typically this should be False if the full image\n"
"# is captured (ROI not used), and True if a subwindow is captured (ROI\n"
"# used).\n"
"bool do_rectify\n"
;
  }

  static const char* value(const ::vino_people_msgs::LicensePlate_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vino_people_msgs::LicensePlate_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.license);
      stream.next(m.roi);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LicensePlate_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vino_people_msgs::LicensePlate_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vino_people_msgs::LicensePlate_<ContainerAllocator>& v)
  {
    s << indent << "license: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.license);
    s << indent << "roi: ";
    s << std::endl;
    Printer< ::sensor_msgs::RegionOfInterest_<ContainerAllocator> >::stream(s, indent + "  ", v.roi);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VINO_PEOPLE_MSGS_MESSAGE_LICENSEPLATE_H
