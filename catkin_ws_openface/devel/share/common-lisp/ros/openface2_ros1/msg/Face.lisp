; Auto-generated. Do not edit!


(cl:in-package openface2_ros1-msg)


;//! \htmlinclude Face.msg.html

(cl:defclass <Face> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_gaze
    :reader left_gaze
    :initarg :left_gaze
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (right_gaze
    :reader right_gaze
    :initarg :right_gaze
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (gaze_angle
    :reader gaze_angle
    :initarg :gaze_angle
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (head_pose
    :reader head_pose
    :initarg :head_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (landmarks_3d
    :reader landmarks_3d
    :initarg :landmarks_3d
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (landmarks_2d
    :reader landmarks_2d
    :initarg :landmarks_2d
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (action_units
    :reader action_units
    :initarg :action_units
    :type (cl:vector openface2_ros1-msg:ActionUnit)
   :initform (cl:make-array 0 :element-type 'openface2_ros1-msg:ActionUnit :initial-element (cl:make-instance 'openface2_ros1-msg:ActionUnit))))
)

(cl:defclass Face (<Face>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Face>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Face)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name openface2_ros1-msg:<Face> is deprecated: use openface2_ros1-msg:Face instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Face>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openface2_ros1-msg:header-val is deprecated.  Use openface2_ros1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_gaze-val :lambda-list '(m))
(cl:defmethod left_gaze-val ((m <Face>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openface2_ros1-msg:left_gaze-val is deprecated.  Use openface2_ros1-msg:left_gaze instead.")
  (left_gaze m))

(cl:ensure-generic-function 'right_gaze-val :lambda-list '(m))
(cl:defmethod right_gaze-val ((m <Face>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openface2_ros1-msg:right_gaze-val is deprecated.  Use openface2_ros1-msg:right_gaze instead.")
  (right_gaze m))

(cl:ensure-generic-function 'gaze_angle-val :lambda-list '(m))
(cl:defmethod gaze_angle-val ((m <Face>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openface2_ros1-msg:gaze_angle-val is deprecated.  Use openface2_ros1-msg:gaze_angle instead.")
  (gaze_angle m))

(cl:ensure-generic-function 'head_pose-val :lambda-list '(m))
(cl:defmethod head_pose-val ((m <Face>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openface2_ros1-msg:head_pose-val is deprecated.  Use openface2_ros1-msg:head_pose instead.")
  (head_pose m))

(cl:ensure-generic-function 'landmarks_3d-val :lambda-list '(m))
(cl:defmethod landmarks_3d-val ((m <Face>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openface2_ros1-msg:landmarks_3d-val is deprecated.  Use openface2_ros1-msg:landmarks_3d instead.")
  (landmarks_3d m))

(cl:ensure-generic-function 'landmarks_2d-val :lambda-list '(m))
(cl:defmethod landmarks_2d-val ((m <Face>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openface2_ros1-msg:landmarks_2d-val is deprecated.  Use openface2_ros1-msg:landmarks_2d instead.")
  (landmarks_2d m))

(cl:ensure-generic-function 'action_units-val :lambda-list '(m))
(cl:defmethod action_units-val ((m <Face>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openface2_ros1-msg:action_units-val is deprecated.  Use openface2_ros1-msg:action_units instead.")
  (action_units m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Face>) ostream)
  "Serializes a message object of type '<Face>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_gaze) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_gaze) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gaze_angle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmarks_3d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmarks_3d))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmarks_2d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmarks_2d))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'action_units))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'action_units))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Face>) istream)
  "Deserializes a message object of type '<Face>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_gaze) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_gaze) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gaze_angle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmarks_3d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmarks_3d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmarks_2d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmarks_2d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'action_units) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'action_units)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'openface2_ros1-msg:ActionUnit))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Face>)))
  "Returns string type for a message object of type '<Face>"
  "openface2_ros1/Face")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Face)))
  "Returns string type for a message object of type 'Face"
  "openface2_ros1/Face")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Face>)))
  "Returns md5sum for a message object of type '<Face>"
  "a3aa88b496bfcc332fcf7fef62b851c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Face)))
  "Returns md5sum for a message object of type 'Face"
  "a3aa88b496bfcc332fcf7fef62b851c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Face>)))
  "Returns full string definition for message of type '<Face>"
  (cl:format cl:nil "std_msgs/Header header~%~%geometry_msgs/Pose left_gaze~%geometry_msgs/Pose right_gaze~%~%geometry_msgs/Vector3 gaze_angle~%~%geometry_msgs/Pose head_pose~%~%geometry_msgs/Point[] landmarks_3d~%geometry_msgs/Point[] landmarks_2d~%~%openface2_ros1/ActionUnit[] action_units~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: openface2_ros1/ActionUnit~%string name~%float64 presence~%float64 intensity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Face)))
  "Returns full string definition for message of type 'Face"
  (cl:format cl:nil "std_msgs/Header header~%~%geometry_msgs/Pose left_gaze~%geometry_msgs/Pose right_gaze~%~%geometry_msgs/Vector3 gaze_angle~%~%geometry_msgs/Pose head_pose~%~%geometry_msgs/Point[] landmarks_3d~%geometry_msgs/Point[] landmarks_2d~%~%openface2_ros1/ActionUnit[] action_units~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: openface2_ros1/ActionUnit~%string name~%float64 presence~%float64 intensity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Face>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_gaze))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_gaze))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gaze_angle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmarks_3d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmarks_2d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'action_units) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Face>))
  "Converts a ROS message object to a list"
  (cl:list 'Face
    (cl:cons ':header (header msg))
    (cl:cons ':left_gaze (left_gaze msg))
    (cl:cons ':right_gaze (right_gaze msg))
    (cl:cons ':gaze_angle (gaze_angle msg))
    (cl:cons ':head_pose (head_pose msg))
    (cl:cons ':landmarks_3d (landmarks_3d msg))
    (cl:cons ':landmarks_2d (landmarks_2d msg))
    (cl:cons ':action_units (action_units msg))
))
