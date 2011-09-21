; Auto-generated. Do not edit!


(cl:in-package Automow_PCB-msg)


;//! \htmlinclude cutter_control.msg.html

(cl:defclass <cutter_control> (roslisp-msg-protocol:ros-message)
  ((cutter_left
    :reader cutter_left
    :initarg :cutter_left
    :type cl:boolean
    :initform cl:nil)
   (cutter_right
    :reader cutter_right
    :initarg :cutter_right
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass cutter_control (<cutter_control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cutter_control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cutter_control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Automow_PCB-msg:<cutter_control> is deprecated: use Automow_PCB-msg:cutter_control instead.")))

(cl:ensure-generic-function 'cutter_left-val :lambda-list '(m))
(cl:defmethod cutter_left-val ((m <cutter_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Automow_PCB-msg:cutter_left-val is deprecated.  Use Automow_PCB-msg:cutter_left instead.")
  (cutter_left m))

(cl:ensure-generic-function 'cutter_right-val :lambda-list '(m))
(cl:defmethod cutter_right-val ((m <cutter_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Automow_PCB-msg:cutter_right-val is deprecated.  Use Automow_PCB-msg:cutter_right instead.")
  (cutter_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cutter_control>) ostream)
  "Serializes a message object of type '<cutter_control>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cutter_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cutter_right) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cutter_control>) istream)
  "Deserializes a message object of type '<cutter_control>"
    (cl:setf (cl:slot-value msg 'cutter_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cutter_right) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cutter_control>)))
  "Returns string type for a message object of type '<cutter_control>"
  "Automow_PCB/cutter_control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cutter_control)))
  "Returns string type for a message object of type 'cutter_control"
  "Automow_PCB/cutter_control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cutter_control>)))
  "Returns md5sum for a message object of type '<cutter_control>"
  "ef29873a12820d5fe3a8c2cccd3531f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cutter_control)))
  "Returns md5sum for a message object of type 'cutter_control"
  "ef29873a12820d5fe3a8c2cccd3531f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cutter_control>)))
  "Returns full string definition for message of type '<cutter_control>"
  (cl:format cl:nil "bool cutter_left~%bool cutter_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cutter_control)))
  "Returns full string definition for message of type 'cutter_control"
  (cl:format cl:nil "bool cutter_left~%bool cutter_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cutter_control>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cutter_control>))
  "Converts a ROS message object to a list"
  (cl:list 'cutter_control
    (cl:cons ':cutter_left (cutter_left msg))
    (cl:cons ':cutter_right (cutter_right msg))
))
