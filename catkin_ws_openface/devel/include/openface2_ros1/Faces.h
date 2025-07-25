// Generated by gencpp from file openface2_ros1/Faces.msg
// DO NOT EDIT!


#ifndef OPENFACE2_ROS1_MESSAGE_FACES_H
#define OPENFACE2_ROS1_MESSAGE_FACES_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <openface2_ros1/Face.h>

namespace openface2_ros1
{
template <class ContainerAllocator>
struct Faces_
{
  typedef Faces_<ContainerAllocator> Type;

  Faces_()
    : header()
    , faces()
    , count(0)  {
    }
  Faces_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , faces(_alloc)
    , count(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::openface2_ros1::Face_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::openface2_ros1::Face_<ContainerAllocator> >> _faces_type;
  _faces_type faces;

   typedef uint32_t _count_type;
  _count_type count;





  typedef boost::shared_ptr< ::openface2_ros1::Faces_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::openface2_ros1::Faces_<ContainerAllocator> const> ConstPtr;

}; // struct Faces_

typedef ::openface2_ros1::Faces_<std::allocator<void> > Faces;

typedef boost::shared_ptr< ::openface2_ros1::Faces > FacesPtr;
typedef boost::shared_ptr< ::openface2_ros1::Faces const> FacesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::openface2_ros1::Faces_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::openface2_ros1::Faces_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::openface2_ros1::Faces_<ContainerAllocator1> & lhs, const ::openface2_ros1::Faces_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.faces == rhs.faces &&
    lhs.count == rhs.count;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::openface2_ros1::Faces_<ContainerAllocator1> & lhs, const ::openface2_ros1::Faces_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace openface2_ros1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::openface2_ros1::Faces_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::openface2_ros1::Faces_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::openface2_ros1::Faces_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::openface2_ros1::Faces_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::openface2_ros1::Faces_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::openface2_ros1::Faces_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::openface2_ros1::Faces_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5ef2a03a2434305fbc91a925df1515fe";
  }

  static const char* value(const ::openface2_ros1::Faces_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5ef2a03a2434305fULL;
  static const uint64_t static_value2 = 0xbc91a925df1515feULL;
};

template<class ContainerAllocator>
struct DataType< ::openface2_ros1::Faces_<ContainerAllocator> >
{
  static const char* value()
  {
    return "openface2_ros1/Faces";
  }

  static const char* value(const ::openface2_ros1::Faces_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::openface2_ros1::Faces_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"openface2_ros1/Face[] faces\n"
"uint32 count\n"
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
"MSG: openface2_ros1/Face\n"
"std_msgs/Header header\n"
"\n"
"geometry_msgs/Pose left_gaze\n"
"geometry_msgs/Pose right_gaze\n"
"\n"
"geometry_msgs/Vector3 gaze_angle\n"
"\n"
"geometry_msgs/Pose head_pose\n"
"\n"
"geometry_msgs/Point[] landmarks_3d\n"
"geometry_msgs/Point[] landmarks_2d\n"
"\n"
"openface2_ros1/ActionUnit[] action_units\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: openface2_ros1/ActionUnit\n"
"string name\n"
"float64 presence\n"
"float64 intensity\n"
;
  }

  static const char* value(const ::openface2_ros1::Faces_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::openface2_ros1::Faces_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.faces);
      stream.next(m.count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Faces_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::openface2_ros1::Faces_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::openface2_ros1::Faces_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "faces[]" << std::endl;
    for (size_t i = 0; i < v.faces.size(); ++i)
    {
      s << indent << "  faces[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::openface2_ros1::Face_<ContainerAllocator> >::stream(s, indent + "    ", v.faces[i]);
    }
    s << indent << "count: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPENFACE2_ROS1_MESSAGE_FACES_H
