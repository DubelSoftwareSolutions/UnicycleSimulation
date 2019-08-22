; Auto-generated. Do not edit!


(cl:in-package ode_unicycle-msg)


;//! \htmlinclude ControlSignal.msg.html

(cl:defclass <ControlSignal> (roslisp-msg-protocol:ros-message)
  ((u1
    :reader u1
    :initarg :u1
    :type cl:float
    :initform 0.0)
   (u2
    :reader u2
    :initarg :u2
    :type cl:float
    :initform 0.0))
)

(cl:defclass ControlSignal (<ControlSignal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlSignal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlSignal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ode_unicycle-msg:<ControlSignal> is deprecated: use ode_unicycle-msg:ControlSignal instead.")))

(cl:ensure-generic-function 'u1-val :lambda-list '(m))
(cl:defmethod u1-val ((m <ControlSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ode_unicycle-msg:u1-val is deprecated.  Use ode_unicycle-msg:u1 instead.")
  (u1 m))

(cl:ensure-generic-function 'u2-val :lambda-list '(m))
(cl:defmethod u2-val ((m <ControlSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ode_unicycle-msg:u2-val is deprecated.  Use ode_unicycle-msg:u2 instead.")
  (u2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlSignal>) ostream)
  "Serializes a message object of type '<ControlSignal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlSignal>) istream)
  "Deserializes a message object of type '<ControlSignal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlSignal>)))
  "Returns string type for a message object of type '<ControlSignal>"
  "ode_unicycle/ControlSignal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlSignal)))
  "Returns string type for a message object of type 'ControlSignal"
  "ode_unicycle/ControlSignal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlSignal>)))
  "Returns md5sum for a message object of type '<ControlSignal>"
  "405a7fcffea8dd5460f53b4f52d56f53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlSignal)))
  "Returns md5sum for a message object of type 'ControlSignal"
  "405a7fcffea8dd5460f53b4f52d56f53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlSignal>)))
  "Returns full string definition for message of type '<ControlSignal>"
  (cl:format cl:nil "float32 u1~%float32 u2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlSignal)))
  "Returns full string definition for message of type 'ControlSignal"
  (cl:format cl:nil "float32 u1~%float32 u2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlSignal>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlSignal>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlSignal
    (cl:cons ':u1 (u1 msg))
    (cl:cons ':u2 (u2 msg))
))
