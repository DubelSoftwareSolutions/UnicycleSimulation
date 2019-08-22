; Auto-generated. Do not edit!


(cl:in-package ode_unicycle-msg)


;//! \htmlinclude TimeSignal.msg.html

(cl:defclass <TimeSignal> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0))
)

(cl:defclass TimeSignal (<TimeSignal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeSignal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeSignal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ode_unicycle-msg:<TimeSignal> is deprecated: use ode_unicycle-msg:TimeSignal instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <TimeSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ode_unicycle-msg:timestamp-val is deprecated.  Use ode_unicycle-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeSignal>) ostream)
  "Serializes a message object of type '<TimeSignal>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeSignal>) istream)
  "Deserializes a message object of type '<TimeSignal>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeSignal>)))
  "Returns string type for a message object of type '<TimeSignal>"
  "ode_unicycle/TimeSignal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeSignal)))
  "Returns string type for a message object of type 'TimeSignal"
  "ode_unicycle/TimeSignal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeSignal>)))
  "Returns md5sum for a message object of type '<TimeSignal>"
  "ed6a244a084e0eede101dea1d32ca39c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeSignal)))
  "Returns md5sum for a message object of type 'TimeSignal"
  "ed6a244a084e0eede101dea1d32ca39c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeSignal>)))
  "Returns full string definition for message of type '<TimeSignal>"
  (cl:format cl:nil "duration timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeSignal)))
  "Returns full string definition for message of type 'TimeSignal"
  (cl:format cl:nil "duration timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeSignal>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeSignal>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeSignal
    (cl:cons ':timestamp (timestamp msg))
))
