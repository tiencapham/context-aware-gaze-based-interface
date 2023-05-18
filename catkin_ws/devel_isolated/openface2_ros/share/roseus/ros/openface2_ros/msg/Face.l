;; Auto-generated. Do not edit!


(when (boundp 'openface2_ros::Face)
  (if (not (find-package "OPENFACE2_ROS"))
    (make-package "OPENFACE2_ROS"))
  (shadow 'Face (find-package "OPENFACE2_ROS")))
(unless (find-package "OPENFACE2_ROS::FACE")
  (make-package "OPENFACE2_ROS::FACE"))

(in-package "ROS")
;;//! \htmlinclude Face.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass openface2_ros::Face
  :super ros::object
  :slots (_header _left_gaze _right_gaze _gaze_angle _head_pos _head_rpy _landmarks_3d _landmarks_2d ))

(defmethod openface2_ros::Face
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_gaze __left_gaze) (instance geometry_msgs::Pose :init))
    ((:right_gaze __right_gaze) (instance geometry_msgs::Pose :init))
    ((:gaze_angle __gaze_angle) (instance geometry_msgs::Vector3 :init))
    ((:head_pos __head_pos) (instance geometry_msgs::Vector3 :init))
    ((:head_rpy __head_rpy) (instance geometry_msgs::Vector3 :init))
    ((:landmarks_3d __landmarks_3d) ())
    ((:landmarks_2d __landmarks_2d) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_gaze __left_gaze)
   (setq _right_gaze __right_gaze)
   (setq _gaze_angle __gaze_angle)
   (setq _head_pos __head_pos)
   (setq _head_rpy __head_rpy)
   (setq _landmarks_3d __landmarks_3d)
   (setq _landmarks_2d __landmarks_2d)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_gaze
   (&rest __left_gaze)
   (if (keywordp (car __left_gaze))
       (send* _left_gaze __left_gaze)
     (progn
       (if __left_gaze (setq _left_gaze (car __left_gaze)))
       _left_gaze)))
  (:right_gaze
   (&rest __right_gaze)
   (if (keywordp (car __right_gaze))
       (send* _right_gaze __right_gaze)
     (progn
       (if __right_gaze (setq _right_gaze (car __right_gaze)))
       _right_gaze)))
  (:gaze_angle
   (&rest __gaze_angle)
   (if (keywordp (car __gaze_angle))
       (send* _gaze_angle __gaze_angle)
     (progn
       (if __gaze_angle (setq _gaze_angle (car __gaze_angle)))
       _gaze_angle)))
  (:head_pos
   (&rest __head_pos)
   (if (keywordp (car __head_pos))
       (send* _head_pos __head_pos)
     (progn
       (if __head_pos (setq _head_pos (car __head_pos)))
       _head_pos)))
  (:head_rpy
   (&rest __head_rpy)
   (if (keywordp (car __head_rpy))
       (send* _head_rpy __head_rpy)
     (progn
       (if __head_rpy (setq _head_rpy (car __head_rpy)))
       _head_rpy)))
  (:landmarks_3d
   (&rest __landmarks_3d)
   (if (keywordp (car __landmarks_3d))
       (send* _landmarks_3d __landmarks_3d)
     (progn
       (if __landmarks_3d (setq _landmarks_3d (car __landmarks_3d)))
       _landmarks_3d)))
  (:landmarks_2d
   (&rest __landmarks_2d)
   (if (keywordp (car __landmarks_2d))
       (send* _landmarks_2d __landmarks_2d)
     (progn
       (if __landmarks_2d (setq _landmarks_2d (car __landmarks_2d)))
       _landmarks_2d)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _left_gaze
    (send _left_gaze :serialization-length)
    ;; geometry_msgs/Pose _right_gaze
    (send _right_gaze :serialization-length)
    ;; geometry_msgs/Vector3 _gaze_angle
    (send _gaze_angle :serialization-length)
    ;; geometry_msgs/Vector3 _head_pos
    (send _head_pos :serialization-length)
    ;; geometry_msgs/Vector3 _head_rpy
    (send _head_rpy :serialization-length)
    ;; geometry_msgs/Point[] _landmarks_3d
    (apply #'+ (send-all _landmarks_3d :serialization-length)) 4
    ;; geometry_msgs/Point[] _landmarks_2d
    (apply #'+ (send-all _landmarks_2d :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _left_gaze
       (send _left_gaze :serialize s)
     ;; geometry_msgs/Pose _right_gaze
       (send _right_gaze :serialize s)
     ;; geometry_msgs/Vector3 _gaze_angle
       (send _gaze_angle :serialize s)
     ;; geometry_msgs/Vector3 _head_pos
       (send _head_pos :serialize s)
     ;; geometry_msgs/Vector3 _head_rpy
       (send _head_rpy :serialize s)
     ;; geometry_msgs/Point[] _landmarks_3d
     (write-long (length _landmarks_3d) s)
     (dolist (elem _landmarks_3d)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _landmarks_2d
     (write-long (length _landmarks_2d) s)
     (dolist (elem _landmarks_2d)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _left_gaze
     (send _left_gaze :deserialize buf ptr-) (incf ptr- (send _left_gaze :serialization-length))
   ;; geometry_msgs/Pose _right_gaze
     (send _right_gaze :deserialize buf ptr-) (incf ptr- (send _right_gaze :serialization-length))
   ;; geometry_msgs/Vector3 _gaze_angle
     (send _gaze_angle :deserialize buf ptr-) (incf ptr- (send _gaze_angle :serialization-length))
   ;; geometry_msgs/Vector3 _head_pos
     (send _head_pos :deserialize buf ptr-) (incf ptr- (send _head_pos :serialization-length))
   ;; geometry_msgs/Vector3 _head_rpy
     (send _head_rpy :deserialize buf ptr-) (incf ptr- (send _head_rpy :serialization-length))
   ;; geometry_msgs/Point[] _landmarks_3d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks_3d (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _landmarks_3d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _landmarks_2d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks_2d (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _landmarks_2d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get openface2_ros::Face :md5sum-) "27d9418620832d6deec93872aa92bbd9")
(setf (get openface2_ros::Face :datatype-) "openface2_ros/Face")
(setf (get openface2_ros::Face :definition-)
      "std_msgs/Header header

geometry_msgs/Pose left_gaze
geometry_msgs/Pose right_gaze

geometry_msgs/Vector3 gaze_angle

geometry_msgs/Vector3 head_pos

geometry_msgs/Vector3 head_rpy



geometry_msgs/Point[] landmarks_3d
geometry_msgs/Point[] landmarks_2d
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
")



(provide :openface2_ros/Face "27d9418620832d6deec93872aa92bbd9")


