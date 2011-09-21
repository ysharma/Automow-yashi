; Auto-generated. Do not edit!


(cl:in-package Automow_PCB-msg)


;//! \htmlinclude batt_status.msg.html

(cl:defclass <batt_status> (roslisp-msg-protocol:ros-message)
  ((LED1
    :reader LED1
    :initarg :LED1
    :type cl:boolean
    :initform cl:nil)
   (LED2
    :reader LED2
    :initarg :LED2
    :type cl:boolean
    :initform cl:nil)
   (LED3
    :reader LED3
    :initarg :LED3
    :type cl:boolean
    :initform cl:nil)
   (batt_percent
    :reader batt_percent
    :initarg :batt_percent
    :type cl:fixnum
    :initform 0))
)

(cl:defclass batt_status (<batt_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <batt_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'batt_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Automow_PCB-msg:<batt_status> is deprecated: use Automow_PCB-msg:batt_status instead.")))

(cl:ensure-generic-function 'LED1-val :lambda-list '(m))
(cl:defmethod LED1-val ((m <batt_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Automow_PCB-msg:LED1-val is deprecated.  Use Automow_PCB-msg:LED1 instead.")
  (LED1 m))

(cl:ensure-generic-function 'LED2-val :lambda-list '(m))
(cl:defmethod LED2-val ((m <batt_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Automow_PCB-msg:LED2-val is deprecated.  Use Automow_PCB-msg:LED2 instead.")
  (LED2 m))

(cl:ensure-generic-function 'LED3-val :lambda-list '(m))
(cl:defmethod LED3-val ((m <batt_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Automow_PCB-msg:LED3-val is deprecated.  Use Automow_PCB-msg:LED3 instead.")
  (LED3 m))

(cl:ensure-generic-function 'batt_percent-val :lambda-list '(m))
(cl:defmethod batt_percent-val ((m <batt_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Automow_PCB-msg:batt_percent-val is deprecated.  Use Automow_PCB-msg:batt_percent instead.")
  (batt_percent m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <batt_status>) ostream)
  "Serializes a message object of type '<batt_status>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LED1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LED2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LED3) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'batt_percent)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <batt_status>) istream)
  "Deserializes a message object of type '<batt_status>"
    (cl:setf (cl:slot-value msg 'LED1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'LED2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'LED3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'batt_percent) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<batt_status>)))
  "Returns string type for a message object of type '<batt_status>"
  "Automow_PCB/batt_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'batt_status)))
  "Returns string type for a message object of type 'batt_status"
  "Automow_PCB/batt_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<batt_status>)))
  "Returns md5sum for a message object of type '<batt_status>"
  "db7092bf346ed0849fd57e7a956cfd11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'batt_status)))
  "Returns md5sum for a message object of type 'batt_status"
  "db7092bf346ed0849fd57e7a956cfd11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<batt_status>)))
  "Returns full string definition for message of type '<batt_status>"
  (cl:format cl:nil "bool LED1~%bool LED2~%bool LED3~%int8 batt_percent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'batt_status)))
  "Returns full string definition for message of type 'batt_status"
  (cl:format cl:nil "bool LED1~%bool LED2~%bool LED3~%int8 batt_percent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <batt_status>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <batt_status>))
  "Converts a ROS message object to a list"
  (cl:list 'batt_status
    (cl:cons ':LED1 (LED1 msg))
    (cl:cons ':LED2 (LED2 msg))
    (cl:cons ':LED3 (LED3 msg))
    (cl:cons ':batt_percent (batt_percent msg))
))
