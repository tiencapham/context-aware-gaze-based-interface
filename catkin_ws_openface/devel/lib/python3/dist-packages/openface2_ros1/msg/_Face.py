# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from openface2_ros1/Face.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import openface2_ros1.msg
import std_msgs.msg

class Face(genpy.Message):
  _md5sum = "a3aa88b496bfcc332fcf7fef62b851c4"
  _type = "openface2_ros1/Face"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header

geometry_msgs/Pose left_gaze
geometry_msgs/Pose right_gaze

geometry_msgs/Vector3 gaze_angle

geometry_msgs/Pose head_pose

geometry_msgs/Point[] landmarks_3d
geometry_msgs/Point[] landmarks_2d

openface2_ros1/ActionUnit[] action_units

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: openface2_ros1/ActionUnit
string name
float64 presence
float64 intensity"""
  __slots__ = ['header','left_gaze','right_gaze','gaze_angle','head_pose','landmarks_3d','landmarks_2d','action_units']
  _slot_types = ['std_msgs/Header','geometry_msgs/Pose','geometry_msgs/Pose','geometry_msgs/Vector3','geometry_msgs/Pose','geometry_msgs/Point[]','geometry_msgs/Point[]','openface2_ros1/ActionUnit[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,left_gaze,right_gaze,gaze_angle,head_pose,landmarks_3d,landmarks_2d,action_units

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Face, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.left_gaze is None:
        self.left_gaze = geometry_msgs.msg.Pose()
      if self.right_gaze is None:
        self.right_gaze = geometry_msgs.msg.Pose()
      if self.gaze_angle is None:
        self.gaze_angle = geometry_msgs.msg.Vector3()
      if self.head_pose is None:
        self.head_pose = geometry_msgs.msg.Pose()
      if self.landmarks_3d is None:
        self.landmarks_3d = []
      if self.landmarks_2d is None:
        self.landmarks_2d = []
      if self.action_units is None:
        self.action_units = []
    else:
      self.header = std_msgs.msg.Header()
      self.left_gaze = geometry_msgs.msg.Pose()
      self.right_gaze = geometry_msgs.msg.Pose()
      self.gaze_angle = geometry_msgs.msg.Vector3()
      self.head_pose = geometry_msgs.msg.Pose()
      self.landmarks_3d = []
      self.landmarks_2d = []
      self.action_units = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_24d().pack(_x.left_gaze.position.x, _x.left_gaze.position.y, _x.left_gaze.position.z, _x.left_gaze.orientation.x, _x.left_gaze.orientation.y, _x.left_gaze.orientation.z, _x.left_gaze.orientation.w, _x.right_gaze.position.x, _x.right_gaze.position.y, _x.right_gaze.position.z, _x.right_gaze.orientation.x, _x.right_gaze.orientation.y, _x.right_gaze.orientation.z, _x.right_gaze.orientation.w, _x.gaze_angle.x, _x.gaze_angle.y, _x.gaze_angle.z, _x.head_pose.position.x, _x.head_pose.position.y, _x.head_pose.position.z, _x.head_pose.orientation.x, _x.head_pose.orientation.y, _x.head_pose.orientation.z, _x.head_pose.orientation.w))
      length = len(self.landmarks_3d)
      buff.write(_struct_I.pack(length))
      for val1 in self.landmarks_3d:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.landmarks_2d)
      buff.write(_struct_I.pack(length))
      for val1 in self.landmarks_2d:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.action_units)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_units:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2d().pack(_x.presence, _x.intensity))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.left_gaze is None:
        self.left_gaze = geometry_msgs.msg.Pose()
      if self.right_gaze is None:
        self.right_gaze = geometry_msgs.msg.Pose()
      if self.gaze_angle is None:
        self.gaze_angle = geometry_msgs.msg.Vector3()
      if self.head_pose is None:
        self.head_pose = geometry_msgs.msg.Pose()
      if self.landmarks_3d is None:
        self.landmarks_3d = None
      if self.landmarks_2d is None:
        self.landmarks_2d = None
      if self.action_units is None:
        self.action_units = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 192
      (_x.left_gaze.position.x, _x.left_gaze.position.y, _x.left_gaze.position.z, _x.left_gaze.orientation.x, _x.left_gaze.orientation.y, _x.left_gaze.orientation.z, _x.left_gaze.orientation.w, _x.right_gaze.position.x, _x.right_gaze.position.y, _x.right_gaze.position.z, _x.right_gaze.orientation.x, _x.right_gaze.orientation.y, _x.right_gaze.orientation.z, _x.right_gaze.orientation.w, _x.gaze_angle.x, _x.gaze_angle.y, _x.gaze_angle.z, _x.head_pose.position.x, _x.head_pose.position.y, _x.head_pose.position.z, _x.head_pose.orientation.x, _x.head_pose.orientation.y, _x.head_pose.orientation.z, _x.head_pose.orientation.w,) = _get_struct_24d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.landmarks_3d = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.landmarks_3d.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.landmarks_2d = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.landmarks_2d.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_units = []
      for i in range(0, length):
        val1 = openface2_ros1.msg.ActionUnit()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 16
        (_x.presence, _x.intensity,) = _get_struct_2d().unpack(str[start:end])
        self.action_units.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_24d().pack(_x.left_gaze.position.x, _x.left_gaze.position.y, _x.left_gaze.position.z, _x.left_gaze.orientation.x, _x.left_gaze.orientation.y, _x.left_gaze.orientation.z, _x.left_gaze.orientation.w, _x.right_gaze.position.x, _x.right_gaze.position.y, _x.right_gaze.position.z, _x.right_gaze.orientation.x, _x.right_gaze.orientation.y, _x.right_gaze.orientation.z, _x.right_gaze.orientation.w, _x.gaze_angle.x, _x.gaze_angle.y, _x.gaze_angle.z, _x.head_pose.position.x, _x.head_pose.position.y, _x.head_pose.position.z, _x.head_pose.orientation.x, _x.head_pose.orientation.y, _x.head_pose.orientation.z, _x.head_pose.orientation.w))
      length = len(self.landmarks_3d)
      buff.write(_struct_I.pack(length))
      for val1 in self.landmarks_3d:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.landmarks_2d)
      buff.write(_struct_I.pack(length))
      for val1 in self.landmarks_2d:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.action_units)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_units:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2d().pack(_x.presence, _x.intensity))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.left_gaze is None:
        self.left_gaze = geometry_msgs.msg.Pose()
      if self.right_gaze is None:
        self.right_gaze = geometry_msgs.msg.Pose()
      if self.gaze_angle is None:
        self.gaze_angle = geometry_msgs.msg.Vector3()
      if self.head_pose is None:
        self.head_pose = geometry_msgs.msg.Pose()
      if self.landmarks_3d is None:
        self.landmarks_3d = None
      if self.landmarks_2d is None:
        self.landmarks_2d = None
      if self.action_units is None:
        self.action_units = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 192
      (_x.left_gaze.position.x, _x.left_gaze.position.y, _x.left_gaze.position.z, _x.left_gaze.orientation.x, _x.left_gaze.orientation.y, _x.left_gaze.orientation.z, _x.left_gaze.orientation.w, _x.right_gaze.position.x, _x.right_gaze.position.y, _x.right_gaze.position.z, _x.right_gaze.orientation.x, _x.right_gaze.orientation.y, _x.right_gaze.orientation.z, _x.right_gaze.orientation.w, _x.gaze_angle.x, _x.gaze_angle.y, _x.gaze_angle.z, _x.head_pose.position.x, _x.head_pose.position.y, _x.head_pose.position.z, _x.head_pose.orientation.x, _x.head_pose.orientation.y, _x.head_pose.orientation.z, _x.head_pose.orientation.w,) = _get_struct_24d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.landmarks_3d = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.landmarks_3d.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.landmarks_2d = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.landmarks_2d.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_units = []
      for i in range(0, length):
        val1 = openface2_ros1.msg.ActionUnit()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 16
        (_x.presence, _x.intensity,) = _get_struct_2d().unpack(str[start:end])
        self.action_units.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_24d = None
def _get_struct_24d():
    global _struct_24d
    if _struct_24d is None:
        _struct_24d = struct.Struct("<24d")
    return _struct_24d
_struct_2d = None
def _get_struct_2d():
    global _struct_2d
    if _struct_2d is None:
        _struct_2d = struct.Struct("<2d")
    return _struct_2d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
