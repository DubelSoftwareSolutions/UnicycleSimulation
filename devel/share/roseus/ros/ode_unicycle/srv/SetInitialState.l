;; Auto-generated. Do not edit!


(when (boundp 'ode_unicycle::SetInitialState)
  (if (not (find-package "ODE_UNICYCLE"))
    (make-package "ODE_UNICYCLE"))
  (shadow 'SetInitialState (find-package "ODE_UNICYCLE")))
(unless (find-package "ODE_UNICYCLE::SETINITIALSTATE")
  (make-package "ODE_UNICYCLE::SETINITIALSTATE"))
(unless (find-package "ODE_UNICYCLE::SETINITIALSTATEREQUEST")
  (make-package "ODE_UNICYCLE::SETINITIALSTATEREQUEST"))
(unless (find-package "ODE_UNICYCLE::SETINITIALSTATERESPONSE")
  (make-package "ODE_UNICYCLE::SETINITIALSTATERESPONSE"))

(in-package "ROS")





(defclass ode_unicycle::SetInitialStateRequest
  :super ros::object
  :slots (_x0 _y0 _fi0 ))

(defmethod ode_unicycle::SetInitialStateRequest
  (:init
   (&key
    ((:x0 __x0) 0.0)
    ((:y0 __y0) 0.0)
    ((:fi0 __fi0) 0.0)
    )
   (send-super :init)
   (setq _x0 (float __x0))
   (setq _y0 (float __y0))
   (setq _fi0 (float __fi0))
   self)
  (:x0
   (&optional __x0)
   (if __x0 (setq _x0 __x0)) _x0)
  (:y0
   (&optional __y0)
   (if __y0 (setq _y0 __y0)) _y0)
  (:fi0
   (&optional __fi0)
   (if __fi0 (setq _fi0 __fi0)) _fi0)
  (:serialization-length
   ()
   (+
    ;; float32 _x0
    4
    ;; float32 _y0
    4
    ;; float32 _fi0
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x0
       (sys::poke _x0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y0
       (sys::poke _y0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fi0
       (sys::poke _fi0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x0
     (setq _x0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y0
     (setq _y0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fi0
     (setq _fi0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ode_unicycle::SetInitialStateResponse
  :super ros::object
  :slots (_x0 _y0 _fi0 ))

(defmethod ode_unicycle::SetInitialStateResponse
  (:init
   (&key
    ((:x0 __x0) 0.0)
    ((:y0 __y0) 0.0)
    ((:fi0 __fi0) 0.0)
    )
   (send-super :init)
   (setq _x0 (float __x0))
   (setq _y0 (float __y0))
   (setq _fi0 (float __fi0))
   self)
  (:x0
   (&optional __x0)
   (if __x0 (setq _x0 __x0)) _x0)
  (:y0
   (&optional __y0)
   (if __y0 (setq _y0 __y0)) _y0)
  (:fi0
   (&optional __fi0)
   (if __fi0 (setq _fi0 __fi0)) _fi0)
  (:serialization-length
   ()
   (+
    ;; float32 _x0
    4
    ;; float32 _y0
    4
    ;; float32 _fi0
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x0
       (sys::poke _x0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y0
       (sys::poke _y0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fi0
       (sys::poke _fi0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x0
     (setq _x0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y0
     (setq _y0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fi0
     (setq _fi0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ode_unicycle::SetInitialState
  :super ros::object
  :slots ())

(setf (get ode_unicycle::SetInitialState :md5sum-) "2cc2c97b3de99a518d38b7026be75633")
(setf (get ode_unicycle::SetInitialState :datatype-) "ode_unicycle/SetInitialState")
(setf (get ode_unicycle::SetInitialState :request) ode_unicycle::SetInitialStateRequest)
(setf (get ode_unicycle::SetInitialState :response) ode_unicycle::SetInitialStateResponse)

(defmethod ode_unicycle::SetInitialStateRequest
  (:response () (instance ode_unicycle::SetInitialStateResponse :init)))

(setf (get ode_unicycle::SetInitialStateRequest :md5sum-) "2cc2c97b3de99a518d38b7026be75633")
(setf (get ode_unicycle::SetInitialStateRequest :datatype-) "ode_unicycle/SetInitialStateRequest")
(setf (get ode_unicycle::SetInitialStateRequest :definition-)
      "float32 x0
float32 y0
float32 fi0
---
float32 x0
float32 y0
float32 fi0

")

(setf (get ode_unicycle::SetInitialStateResponse :md5sum-) "2cc2c97b3de99a518d38b7026be75633")
(setf (get ode_unicycle::SetInitialStateResponse :datatype-) "ode_unicycle/SetInitialStateResponse")
(setf (get ode_unicycle::SetInitialStateResponse :definition-)
      "float32 x0
float32 y0
float32 fi0
---
float32 x0
float32 y0
float32 fi0

")



(provide :ode_unicycle/SetInitialState "2cc2c97b3de99a518d38b7026be75633")


