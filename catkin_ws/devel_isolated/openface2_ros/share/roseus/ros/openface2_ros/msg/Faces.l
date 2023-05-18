;; Auto-generated. Do not edit!


(when (boundp 'openface2_ros::Faces)
  (if (not (find-package "OPENFACE2_ROS"))
    (make-package "OPENFACE2_ROS"))
  (shadow 'Faces (find-package "OPENFACE2_ROS")))
(unless (find-package "OPENFACE2_ROS::FACES")
  (make-package "OPENFACE2_ROS::FACES"))

(in-package "ROS")
;;//! \htmlinclude Faces.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass openface2_ros::Faces
  :super ros::object
  :slots (_header _faces _count ))

(defmethod openface2_ros::Faces
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:faces __faces) ())
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _faces __faces)
   (setq _count (round __count))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:faces
   (&rest __faces)
   (if (keywordp (car __faces))
       (send* _faces __faces)
     (progn
       (if __faces (setq _faces (car __faces)))
       _faces)))
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; openface2_ros/Face[] _faces
    (apply #'+ (send-all _faces :serialization-length)) 4
    ;; uint32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; openface2_ros/Face[] _faces
     (write-long (length _faces) s)
     (dolist (elem _faces)
       (send elem :serialize s)
       )
     ;; uint32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; openface2_ros/Face[] _faces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _faces (let (r) (dotimes (i n) (push (instance openface2_ros::Face :init) r)) r))
     (dolist (elem- _faces)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get openface2_ros::Faces :md5sum-) "ea916897207bf1c4bb798ecf96d1cab9")
(setf (get openface2_ros::Faces :datatype-) "openface2_ros/Faces")
(setf (get openface2_ros::Faces :definition-)
      "std_msgs/Header header

openface2_ros/Face[] faces
uint32 count

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
MSG: openface2_ros/Face
std_msgs/Header header

geometry_msgs/Pose left_gaze
geometry_msgs/Pose right_gaze

geometry_msgs/Vector3 gaze_angle

geometry_msgs/Vector3 head_pos

geometry_msgs/Vector3 head_rpy



geometry_msgs/Point[] landmarks_3d
geometry_msgs/Point[] landmarks_2d
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
")



(provide :openface2_ros/Faces "ea916897207bf1c4bb798ecf96d1cab9")


