
(cl:in-package :asdf)

(defsystem "Automow_PCB-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "cutter_control" :depends-on ("_package_cutter_control"))
    (:file "_package_cutter_control" :depends-on ("_package"))
    (:file "batt_status" :depends-on ("_package_batt_status"))
    (:file "_package_batt_status" :depends-on ("_package"))
    (:file "Status" :depends-on ("_package_Status"))
    (:file "_package_Status" :depends-on ("_package"))
  ))