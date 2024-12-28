
(cl:in-package :asdf)

(defsystem "wit_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ImuGpsRaw" :depends-on ("_package_ImuGpsRaw"))
    (:file "_package_ImuGpsRaw" :depends-on ("_package"))
  ))