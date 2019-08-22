;; Auto-generated. Do not edit!


(when (boundp 'ode_unicycle::TimeSignal)
  (if (not (find-package "ODE_UNICYCLE"))
    (make-package "ODE_UNICYCLE"))
  (shadow 'TimeSignal (find-package "ODE_UNICYCLE")))
(unless (find-package "ODE_UNICYCLE::TIMESIGNAL")
  (make-package "ODE_UNICYCLE::TIMESIGNAL"))

(in-package "ROS")
;;//! \htmlinclude TimeSignal.msg.html


(defclass ode_unicycle::TimeSignal
  :super ros::object
  :slots (_timestamp ))

(defmethod ode_unicycle::TimeSignal
  (:init
   (&key
    ((:timestamp __timestamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _timestamp __timestamp)
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; duration _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ode_unicycle::TimeSignal :md5sum-) "ed6a244a084e0eede101dea1d32ca39c")
(setf (get ode_unicycle::TimeSignal :datatype-) "ode_unicycle/TimeSignal")
(setf (get ode_unicycle::TimeSignal :definition-)
      "duration timestamp

")



(provide :ode_unicycle/TimeSignal "ed6a244a084e0eede101dea1d32ca39c")


