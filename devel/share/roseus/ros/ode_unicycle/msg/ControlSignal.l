;; Auto-generated. Do not edit!


(when (boundp 'ode_unicycle::ControlSignal)
  (if (not (find-package "ODE_UNICYCLE"))
    (make-package "ODE_UNICYCLE"))
  (shadow 'ControlSignal (find-package "ODE_UNICYCLE")))
(unless (find-package "ODE_UNICYCLE::CONTROLSIGNAL")
  (make-package "ODE_UNICYCLE::CONTROLSIGNAL"))

(in-package "ROS")
;;//! \htmlinclude ControlSignal.msg.html


(defclass ode_unicycle::ControlSignal
  :super ros::object
  :slots (_u1 _u2 ))

(defmethod ode_unicycle::ControlSignal
  (:init
   (&key
    ((:u1 __u1) 0.0)
    ((:u2 __u2) 0.0)
    )
   (send-super :init)
   (setq _u1 (float __u1))
   (setq _u2 (float __u2))
   self)
  (:u1
   (&optional __u1)
   (if __u1 (setq _u1 __u1)) _u1)
  (:u2
   (&optional __u2)
   (if __u2 (setq _u2 __u2)) _u2)
  (:serialization-length
   ()
   (+
    ;; float32 _u1
    4
    ;; float32 _u2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _u1
       (sys::poke _u1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u2
       (sys::poke _u2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _u1
     (setq _u1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u2
     (setq _u2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ode_unicycle::ControlSignal :md5sum-) "405a7fcffea8dd5460f53b4f52d56f53")
(setf (get ode_unicycle::ControlSignal :datatype-) "ode_unicycle/ControlSignal")
(setf (get ode_unicycle::ControlSignal :definition-)
      "float32 u1
float32 u2

")



(provide :ode_unicycle/ControlSignal "405a7fcffea8dd5460f53b4f52d56f53")


