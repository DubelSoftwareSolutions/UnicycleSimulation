
(cl:in-package :asdf)

(defsystem "ode_unicycle-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetInitialState" :depends-on ("_package_SetInitialState"))
    (:file "_package_SetInitialState" :depends-on ("_package"))
  ))