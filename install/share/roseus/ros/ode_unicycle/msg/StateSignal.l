;; Auto-generated. Do not edit!


(when (boundp 'ode_unicycle::StateSignal)
  (if (not (find-package "ODE_UNICYCLE"))
    (make-package "ODE_UNICYCLE"))
  (shadow 'StateSignal (find-package "ODE_UNICYCLE")))
(unless (find-package "ODE_UNICYCLE::STATESIGNAL")
  (make-package "ODE_UNICYCLE::STATESIGNAL"))

(in-package "ROS")
;;//! \htmlinclude StateSignal.msg.html


(defclass ode_unicycle::StateSignal
  :super ros::object
  :slots (_x _y _fi ))

(defmethod ode_unicycle::StateSignal
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:fi __fi) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _fi (float __fi))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:fi
   (&optional __fi)
   (if __fi (setq _fi __fi)) _fi)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _fi
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fi
       (sys::poke _fi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fi
     (setq _fi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ode_unicycle::StateSignal :md5sum-) "d0f3cc976890af134a6ee50472cd2a1e")
(setf (get ode_unicycle::StateSignal :datatype-) "ode_unicycle/StateSignal")
(setf (get ode_unicycle::StateSignal :definition-)
      "float32 x
float32 y
float32 fi

")



(provide :ode_unicycle/StateSignal "d0f3cc976890af134a6ee50472cd2a1e")


