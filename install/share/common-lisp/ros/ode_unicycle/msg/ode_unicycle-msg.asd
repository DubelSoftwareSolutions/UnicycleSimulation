
(cl:in-package :asdf)

(defsystem "ode_unicycle-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "StateSignal" :depends-on ("_package_StateSignal"))
    (:file "_package_StateSignal" :depends-on ("_package"))
    (:file "TimeSignal" :depends-on ("_package_TimeSignal"))
    (:file "_package_TimeSignal" :depends-on ("_package"))
    (:file "ControlSignal" :depends-on ("_package_ControlSignal"))
    (:file "_package_ControlSignal" :depends-on ("_package"))
  ))