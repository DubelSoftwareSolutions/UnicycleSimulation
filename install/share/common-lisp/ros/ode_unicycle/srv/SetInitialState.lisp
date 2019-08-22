; Auto-generated. Do not edit!


(cl:in-package ode_unicycle-srv)


;//! \htmlinclude SetInitialState-request.msg.html

(cl:defclass <SetInitialState-request> (roslisp-msg-protocol:ros-message)
  ((x0
    :reader x0
    :initarg :x0
    :type cl:float
    :initform 0.0)
   (y0
    :reader y0
    :initarg :y0
    :type cl:float
    :initform 0.0)
   (fi0
    :reader fi0
    :initarg :fi0
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetInitialState-request (<SetInitialState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInitialState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInitialState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ode_unicycle-srv:<SetInitialState-request> is deprecated: use ode_unicycle-srv:SetInitialState-request instead.")))

(cl:ensure-generic-function 'x0-val :lambda-list '(m))
(cl:defmethod x0-val ((m <SetInitialState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ode_unicycle-srv:x0-val is deprecated.  Use ode_unicycle-srv:x0 instead.")
  (x0 m))

(cl:ensure-generic-function 'y0-val :lambda-list '(m))
(cl:defmethod y0-val ((m <SetInitialState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ode_unicycle-srv:y0-val is deprecated.  Use ode_unicycle-srv:y0 instead.")
  (y0 m))

(cl:ensure-generic-function 'fi0-val :lambda-list '(m))
(cl:defmethod fi0-val ((m <SetInitialState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ode_unicycle-srv:fi0-val is deprecated.  Use ode_unicycle-srv:fi0 instead.")
  (fi0 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInitialState-request>) ostream)
  "Serializes a message object of type '<SetInitialState-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fi0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInitialState-request>) istream)
  "Deserializes a message object of type '<SetInitialState-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fi0) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInitialState-request>)))
  "Returns string type for a service object of type '<SetInitialState-request>"
  "ode_unicycle/SetInitialStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInitialState-request)))
  "Returns string type for a service object of type 'SetInitialState-request"
  "ode_unicycle/SetInitialStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInitialState-request>)))
  "Returns md5sum for a message object of type '<SetInitialState-request>"
  "2cc2c97b3de99a518d38b7026be75633")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInitialState-request)))
  "Returns md5sum for a message object of type 'SetInitialState-request"
  "2cc2c97b3de99a518d38b7026be75633")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInitialState-request>)))
  "Returns full string definition for message of type '<SetInitialState-request>"
  (cl:format cl:nil "float32 x0~%float32 y0~%float32 fi0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInitialState-request)))
  "Returns full string definition for message of type 'SetInitialState-request"
  (cl:format cl:nil "float32 x0~%float32 y0~%float32 fi0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInitialState-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInitialState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInitialState-request
    (cl:cons ':x0 (x0 msg))
    (cl:cons ':y0 (y0 msg))
    (cl:cons ':fi0 (fi0 msg))
))
;//! \htmlinclude SetInitialState-response.msg.html

(cl:defclass <SetInitialState-response> (roslisp-msg-protocol:ros-message)
  ((x0
    :reader x0
    :initarg :x0
    :type cl:float
    :initform 0.0)
   (y0
    :reader y0
    :initarg :y0
    :type cl:float
    :initform 0.0)
   (fi0
    :reader fi0
    :initarg :fi0
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetInitialState-response (<SetInitialState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInitialState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInitialState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ode_unicycle-srv:<SetInitialState-response> is deprecated: use ode_unicycle-srv:SetInitialState-response instead.")))

(cl:ensure-generic-function 'x0-val :lambda-list '(m))
(cl:defmethod x0-val ((m <SetInitialState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ode_unicycle-srv:x0-val is deprecated.  Use ode_unicycle-srv:x0 instead.")
  (x0 m))

(cl:ensure-generic-function 'y0-val :lambda-list '(m))
(cl:defmethod y0-val ((m <SetInitialState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ode_unicycle-srv:y0-val is deprecated.  Use ode_unicycle-srv:y0 instead.")
  (y0 m))

(cl:ensure-generic-function 'fi0-val :lambda-list '(m))
(cl:defmethod fi0-val ((m <SetInitialState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ode_unicycle-srv:fi0-val is deprecated.  Use ode_unicycle-srv:fi0 instead.")
  (fi0 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInitialState-response>) ostream)
  "Serializes a message object of type '<SetInitialState-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fi0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInitialState-response>) istream)
  "Deserializes a message object of type '<SetInitialState-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fi0) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInitialState-response>)))
  "Returns string type for a service object of type '<SetInitialState-response>"
  "ode_unicycle/SetInitialStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInitialState-response)))
  "Returns string type for a service object of type 'SetInitialState-response"
  "ode_unicycle/SetInitialStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInitialState-response>)))
  "Returns md5sum for a message object of type '<SetInitialState-response>"
  "2cc2c97b3de99a518d38b7026be75633")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInitialState-response)))
  "Returns md5sum for a message object of type 'SetInitialState-response"
  "2cc2c97b3de99a518d38b7026be75633")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInitialState-response>)))
  "Returns full string definition for message of type '<SetInitialState-response>"
  (cl:format cl:nil "float32 x0~%float32 y0~%float32 fi0~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInitialState-response)))
  "Returns full string definition for message of type 'SetInitialState-response"
  (cl:format cl:nil "float32 x0~%float32 y0~%float32 fi0~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInitialState-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInitialState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInitialState-response
    (cl:cons ':x0 (x0 msg))
    (cl:cons ':y0 (y0 msg))
    (cl:cons ':fi0 (fi0 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetInitialState)))
  'SetInitialState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetInitialState)))
  'SetInitialState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInitialState)))
  "Returns string type for a service object of type '<SetInitialState>"
  "ode_unicycle/SetInitialState")