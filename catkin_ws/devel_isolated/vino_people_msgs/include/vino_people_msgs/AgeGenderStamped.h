// Generated by gencpp from file vino_people_msgs/AgeGenderStamped.msg
// DO NOT EDIT!


#ifndef VINO_PEOPLE_MSGS_MESSAGE_AGEGENDERSTAMPED_H
#define VINO_PEOPLE_MSGS_MESSAGE_AGEGENDERSTAMPED_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <vino_people_msgs/AgeGender.h>

namespace vino_people_msgs
{
template <class ContainerAllocator>
struct AgeGenderStamped_
{
  typedef AgeGenderStamped_<ContainerAllocator> Type;

  AgeGenderStamped_()
    : header()
    , objects()  {
    }
  AgeGenderStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , objects(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::vino_people_msgs::AgeGender_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::vino_people_msgs::AgeGender_<ContainerAllocator> >> _objects_type;
  _objects_type objects;





  typedef boost::shared_ptr< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> const> ConstPtr;

}; // struct AgeGenderStamped_

typedef ::vino_people_msgs::AgeGenderStamped_<std::allocator<void> > AgeGenderStamped;

typedef boost::shared_ptr< ::vino_people_msgs::AgeGenderStamped > AgeGenderStampedPtr;
typedef boost::shared_ptr< ::vino_people_msgs::AgeGenderStamped const> AgeGenderStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator1> & lhs, const ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.objects == rhs.objects;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator1> & lhs, const ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace vino_people_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8b4b6283be2dce47dac3b36f165d34b3";
  }

  static const char* value(const ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8b4b6283be2dce47ULL;
  static const uint64_t static_value2 = 0xdac3b36f165d34b3ULL;
};

template<class ContainerAllocator>
struct DataType< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vino_people_msgs/AgeGenderStamped";
  }

  static const char* value(const ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> >
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
"std_msgs/Header header\n"
"vino_people_msgs/AgeGender[] objects\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: vino_people_msgs/AgeGender\n"
"# Copyright (c) 2018 Intel Corporation\n"
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
"float32 age                        # age: 0~100\n"
"string gender                      # \"Male\" or \"Female\"\n"
"float32 gender_confidence          # probability of gender\n"
"sensor_msgs/RegionOfInterest roi   # region of interest for a person's face\n"
"\n"
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

  static const char* value(const ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.objects);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AgeGenderStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vino_people_msgs::AgeGenderStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "objects[]" << std::endl;
    for (size_t i = 0; i < v.objects.size(); ++i)
    {
      s << indent << "  objects[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::vino_people_msgs::AgeGender_<ContainerAllocator> >::stream(s, indent + "    ", v.objects[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // VINO_PEOPLE_MSGS_MESSAGE_AGEGENDERSTAMPED_H
