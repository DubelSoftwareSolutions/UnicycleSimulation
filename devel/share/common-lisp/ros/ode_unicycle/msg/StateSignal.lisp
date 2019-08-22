; Auto-generated. Do not edit!


(cl:in-package ode_unicycle-msg)


;//! \htmlinclude StateSignal.msg.html

(cl:defclass <StateSignal> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (fi
    :reader fi
    :initarg :fi
    :type cl:float
    :initform 0.0))
)

(cl:defclass StateSignal (<StateSignal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StateSignal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StateSignal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ode_unicycle-msg:<StateSignal> is deprecated: use ode_unicycle-msg:StateSignal instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <StateSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ode_unicycle-msg:x-val is deprecated.  Use ode_unicycle-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <StateSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ode_unicycle-msg:y-val is deprecated.  Use ode_unicycle-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'fi-val :lambda-list '(m))
(cl:defmethod fi-val ((m <StateSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ode_unicycle-msg:fi-val is deprecated.  Use ode_unicycle-msg:fi instead.")
  (fi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StateSignal>) ostream)
  "Serializes a message object of type '<StateSignal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StateSignal>) istream)
  "Deserializes a message object of type '<StateSignal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fi) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StateSignal>)))
  "Returns string type for a message object of type '<StateSignal>"
  "ode_unicycle/StateSignal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateSignal)))
  "Returns string type for a message object of type 'StateSignal"
  "ode_unicycle/StateSignal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StateSignal>)))
  "Returns md5sum for a message object of type '<StateSignal>"
  "d0f3cc976890af134a6ee50472cd2a1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StateSignal)))
  "Returns md5sum for a message object of type 'StateSignal"
  "d0f3cc976890af134a6ee50472cd2a1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StateSignal>)))
  "Returns full string definition for message of type '<StateSignal>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 fi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StateSignal)))
  "Returns full string definition for message of type 'StateSignal"
  (cl:format cl:nil "float32 x~%float32 y~%float32 fi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StateSignal>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StateSignal>))
  "Converts a ROS message object to a list"
  (cl:list 'StateSignal
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':fi (fi msg))
))
