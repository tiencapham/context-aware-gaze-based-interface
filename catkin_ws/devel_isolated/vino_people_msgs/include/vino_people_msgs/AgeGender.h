// Generated by gencpp from file vino_people_msgs/AgeGender.msg
// DO NOT EDIT!


#ifndef VINO_PEOPLE_MSGS_MESSAGE_AGEGENDER_H
#define VINO_PEOPLE_MSGS_MESSAGE_AGEGENDER_H


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
struct AgeGender_
{
  typedef AgeGender_<ContainerAllocator> Type;

  AgeGender_()
    : age(0.0)
    , gender()
    , gender_confidence(0.0)
    , roi()  {
    }
  AgeGender_(const ContainerAllocator& _alloc)
    : age(0.0)
    , gender(_alloc)
    , gender_confidence(0.0)
    , roi(_alloc)  {
  (void)_alloc;
    }



   typedef float _age_type;
  _age_type age;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _gender_type;
  _gender_type gender;

   typedef float _gender_confidence_type;
  _gender_confidence_type gender_confidence;

   typedef  ::sensor_msgs::RegionOfInterest_<ContainerAllocator>  _roi_type;
  _roi_type roi;





  typedef boost::shared_ptr< ::vino_people_msgs::AgeGender_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vino_people_msgs::AgeGender_<ContainerAllocator> const> ConstPtr;

}; // struct AgeGender_

typedef ::vino_people_msgs::AgeGender_<std::allocator<void> > AgeGender;

typedef boost::shared_ptr< ::vino_people_msgs::AgeGender > AgeGenderPtr;
typedef boost::shared_ptr< ::vino_people_msgs::AgeGender const> AgeGenderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vino_people_msgs::AgeGender_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vino_people_msgs::AgeGender_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::vino_people_msgs::AgeGender_<ContainerAllocator1> & lhs, const ::vino_people_msgs::AgeGender_<ContainerAllocator2> & rhs)
{
  return lhs.age == rhs.age &&
    lhs.gender == rhs.gender &&
    lhs.gender_confidence == rhs.gender_confidence &&
    lhs.roi == rhs.roi;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::vino_people_msgs::AgeGender_<ContainerAllocator1> & lhs, const ::vino_people_msgs::AgeGender_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace vino_people_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::vino_people_msgs::AgeGender_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vino_people_msgs::AgeGender_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vino_people_msgs::AgeGender_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vino_people_msgs::AgeGender_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vino_people_msgs::AgeGender_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vino_people_msgs::AgeGender_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vino_people_msgs::AgeGender_<ContainerAllocator> >
{
  static const char* value()
  {
    return "25ec0e7174072bb242beb26804c0c4ae";
  }

  static const char* value(const ::vino_people_msgs::AgeGender_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x25ec0e7174072bb2ULL;
  static const uint64_t static_value2 = 0x42beb26804c0c4aeULL;
};

template<class ContainerAllocator>
struct DataType< ::vino_people_msgs::AgeGender_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vino_people_msgs/AgeGender";
  }

  static const char* value(const ::vino_people_msgs::AgeGender_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vino_people_msgs::AgeGender_<ContainerAllocator> >
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

  static const char* value(const ::vino_people_msgs::AgeGender_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vino_people_msgs::AgeGender_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.age);
      stream.next(m.gender);
      stream.next(m.gender_confidence);
      stream.next(m.roi);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AgeGender_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vino_people_msgs::AgeGender_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vino_people_msgs::AgeGender_<ContainerAllocator>& v)
  {
    s << indent << "age: ";
    Printer<float>::stream(s, indent + "  ", v.age);
    s << indent << "gender: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.gender);
    s << indent << "gender_confidence: ";
    Printer<float>::stream(s, indent + "  ", v.gender_confidence);
    s << indent << "roi: ";
    s << std::endl;
    Printer< ::sensor_msgs::RegionOfInterest_<ContainerAllocator> >::stream(s, indent + "  ", v.roi);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VINO_PEOPLE_MSGS_MESSAGE_AGEGENDER_H
