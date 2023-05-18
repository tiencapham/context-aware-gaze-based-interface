; Auto-generated. Do not edit!


(cl:in-package openface2_ros1-msg)


;//! \htmlinclude Faces.msg.html

(cl:defclass <Faces> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (faces
    :reader faces
    :initarg :faces
    :type (cl:vector openface2_ros1-msg:Face)
   :initform (cl:make-array 0 :element-type 'openface2_ros1-msg:Face :initial-element (cl:make-instance 'openface2_ros1-msg:Face)))
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass Faces (<Faces>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Faces>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Faces)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name openface2_ros1-msg:<Faces> is deprecated: use openface2_ros1-msg:Faces instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Faces>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openface2_ros1-msg:header-val is deprecated.  Use openface2_ros1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'faces-val :lambda-list '(m))
(cl:defmethod faces-val ((m <Faces>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openface2_ros1-msg:faces-val is deprecated.  Use openface2_ros1-msg:faces instead.")
  (faces m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <Faces>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openface2_ros1-msg:count-val is deprecated.  Use openface2_ros1-msg:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Faces>) ostream)
  "Serializes a message object of type '<Faces>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'faces))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'faces))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Faces>) istream)
  "Deserializes a message object of type '<Faces>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'faces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'faces)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'openface2_ros1-msg:Face))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Faces>)))
  "Returns string type for a message object of type '<Faces>"
  "openface2_ros1/Faces")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Faces)))
  "Returns string type for a message object of type 'Faces"
  "openface2_ros1/Faces")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Faces>)))
  "Returns md5sum for a message object of type '<Faces>"
  "5ef2a03a2434305fbc91a925df1515fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Faces)))
  "Returns md5sum for a message object of type 'Faces"
  "5ef2a03a2434305fbc91a925df1515fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Faces>)))
  "Returns full string definition for message of type '<Faces>"
  (cl:format cl:nil "std_msgs/Header header~%~%openface2_ros1/Face[] faces~%uint32 count~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: openface2_ros1/Face~%std_msgs/Header header~%~%geometry_msgs/Pose left_gaze~%geometry_msgs/Pose right_gaze~%~%geometry_msgs/Vector3 gaze_angle~%~%geometry_msgs/Pose head_pose~%~%geometry_msgs/Point[] landmarks_3d~%geometry_msgs/Point[] landmarks_2d~%~%openface2_ros1/ActionUnit[] action_units~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: openface2_ros1/ActionUnit~%string name~%float64 presence~%float64 intensity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Faces)))
  "Returns full string definition for message of type 'Faces"
  (cl:format cl:nil "std_msgs/Header header~%~%openface2_ros1/Face[] faces~%uint32 count~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: openface2_ros1/Face~%std_msgs/Header header~%~%geometry_msgs/Pose left_gaze~%geometry_msgs/Pose right_gaze~%~%geometry_msgs/Vector3 gaze_angle~%~%geometry_msgs/Pose head_pose~%~%geometry_msgs/Point[] landmarks_3d~%geometry_msgs/Point[] landmarks_2d~%~%openface2_ros1/ActionUnit[] action_units~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: openface2_ros1/ActionUnit~%string name~%float64 presence~%float64 intensity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Faces>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'faces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Faces>))
  "Converts a ROS message object to a list"
  (cl:list 'Faces
    (cl:cons ':header (header msg))
    (cl:cons ':faces (faces msg))
    (cl:cons ':count (count msg))
))
