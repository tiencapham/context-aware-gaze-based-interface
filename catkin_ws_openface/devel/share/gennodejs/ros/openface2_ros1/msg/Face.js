// Auto-generated. Do not edit!

// (in-package openface2_ros1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ActionUnit = require('./ActionUnit.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Face {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_gaze = null;
      this.right_gaze = null;
      this.gaze_angle = null;
      this.head_pose = null;
      this.landmarks_3d = null;
      this.landmarks_2d = null;
      this.action_units = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_gaze')) {
        this.left_gaze = initObj.left_gaze
      }
      else {
        this.left_gaze = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('right_gaze')) {
        this.right_gaze = initObj.right_gaze
      }
      else {
        this.right_gaze = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('gaze_angle')) {
        this.gaze_angle = initObj.gaze_angle
      }
      else {
        this.gaze_angle = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('head_pose')) {
        this.head_pose = initObj.head_pose
      }
      else {
        this.head_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('landmarks_3d')) {
        this.landmarks_3d = initObj.landmarks_3d
      }
      else {
        this.landmarks_3d = [];
      }
      if (initObj.hasOwnProperty('landmarks_2d')) {
        this.landmarks_2d = initObj.landmarks_2d
      }
      else {
        this.landmarks_2d = [];
      }
      if (initObj.hasOwnProperty('action_units')) {
        this.action_units = initObj.action_units
      }
      else {
        this.action_units = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Face
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_gaze]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.left_gaze, buffer, bufferOffset);
    // Serialize message field [right_gaze]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.right_gaze, buffer, bufferOffset);
    // Serialize message field [gaze_angle]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.gaze_angle, buffer, bufferOffset);
    // Serialize message field [head_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.head_pose, buffer, bufferOffset);
    // Serialize message field [landmarks_3d]
    // Serialize the length for message field [landmarks_3d]
    bufferOffset = _serializer.uint32(obj.landmarks_3d.length, buffer, bufferOffset);
    obj.landmarks_3d.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [landmarks_2d]
    // Serialize the length for message field [landmarks_2d]
    bufferOffset = _serializer.uint32(obj.landmarks_2d.length, buffer, bufferOffset);
    obj.landmarks_2d.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [action_units]
    // Serialize the length for message field [action_units]
    bufferOffset = _serializer.uint32(obj.action_units.length, buffer, bufferOffset);
    obj.action_units.forEach((val) => {
      bufferOffset = ActionUnit.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Face
    let len;
    let data = new Face(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_gaze]
    data.left_gaze = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_gaze]
    data.right_gaze = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [gaze_angle]
    data.gaze_angle = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [head_pose]
    data.head_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [landmarks_3d]
    // Deserialize array length for message field [landmarks_3d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.landmarks_3d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.landmarks_3d[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [landmarks_2d]
    // Deserialize array length for message field [landmarks_2d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.landmarks_2d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.landmarks_2d[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [action_units]
    // Deserialize array length for message field [action_units]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.action_units = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.action_units[i] = ActionUnit.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.landmarks_3d.length;
    length += 24 * object.landmarks_2d.length;
    object.action_units.forEach((val) => {
      length += ActionUnit.getMessageSize(val);
    });
    return length + 204;
  }

  static datatype() {
    // Returns string type for a message object
    return 'openface2_ros1/Face';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3aa88b496bfcc332fcf7fef62b851c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
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
    float64 intensity
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Face(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_gaze !== undefined) {
      resolved.left_gaze = geometry_msgs.msg.Pose.Resolve(msg.left_gaze)
    }
    else {
      resolved.left_gaze = new geometry_msgs.msg.Pose()
    }

    if (msg.right_gaze !== undefined) {
      resolved.right_gaze = geometry_msgs.msg.Pose.Resolve(msg.right_gaze)
    }
    else {
      resolved.right_gaze = new geometry_msgs.msg.Pose()
    }

    if (msg.gaze_angle !== undefined) {
      resolved.gaze_angle = geometry_msgs.msg.Vector3.Resolve(msg.gaze_angle)
    }
    else {
      resolved.gaze_angle = new geometry_msgs.msg.Vector3()
    }

    if (msg.head_pose !== undefined) {
      resolved.head_pose = geometry_msgs.msg.Pose.Resolve(msg.head_pose)
    }
    else {
      resolved.head_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.landmarks_3d !== undefined) {
      resolved.landmarks_3d = new Array(msg.landmarks_3d.length);
      for (let i = 0; i < resolved.landmarks_3d.length; ++i) {
        resolved.landmarks_3d[i] = geometry_msgs.msg.Point.Resolve(msg.landmarks_3d[i]);
      }
    }
    else {
      resolved.landmarks_3d = []
    }

    if (msg.landmarks_2d !== undefined) {
      resolved.landmarks_2d = new Array(msg.landmarks_2d.length);
      for (let i = 0; i < resolved.landmarks_2d.length; ++i) {
        resolved.landmarks_2d[i] = geometry_msgs.msg.Point.Resolve(msg.landmarks_2d[i]);
      }
    }
    else {
      resolved.landmarks_2d = []
    }

    if (msg.action_units !== undefined) {
      resolved.action_units = new Array(msg.action_units.length);
      for (let i = 0; i < resolved.action_units.length; ++i) {
        resolved.action_units[i] = ActionUnit.Resolve(msg.action_units[i]);
      }
    }
    else {
      resolved.action_units = []
    }

    return resolved;
    }
};

module.exports = Face;
