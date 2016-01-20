; Auto-generated. Do not edit!


(cl:in-package komodo_speech-msg)


;//! \htmlinclude KomodoSpeechRecCommand.msg.html

(cl:defclass <KomodoSpeechRecCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform "")
   (cat
    :reader cat
    :initarg :cat
    :type cl:string
    :initform ""))
)

(cl:defclass KomodoSpeechRecCommand (<KomodoSpeechRecCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KomodoSpeechRecCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KomodoSpeechRecCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name komodo_speech-msg:<KomodoSpeechRecCommand> is deprecated: use komodo_speech-msg:KomodoSpeechRecCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <KomodoSpeechRecCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-msg:header-val is deprecated.  Use komodo_speech-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <KomodoSpeechRecCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-msg:cmd-val is deprecated.  Use komodo_speech-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'cat-val :lambda-list '(m))
(cl:defmethod cat-val ((m <KomodoSpeechRecCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-msg:cat-val is deprecated.  Use komodo_speech-msg:cat instead.")
  (cat m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<KomodoSpeechRecCommand>)))
    "Constants for message type '<KomodoSpeechRecCommand>"
  '((:CMD_START . start           # String value for start command)
    (:CMD_STOP . stop             # String value for stop command)
    (:CAT_YESNO . yes_no          # Possible answer to a "yes/no" question)
    (:CAT_LOCATION . location     # Location description (e.g. 5th floor, building 37, etc.))
    (:CAT_COMMAND . command       # Command description (e.g. go get coffee))
    (:CAT_GESTURE . gesture       # Verbal indicators for gestures (e.g. here your go))
    (:CAT_ALL . all               # All known phrases))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'KomodoSpeechRecCommand)))
    "Constants for message type 'KomodoSpeechRecCommand"
  '((:CMD_START . start           # String value for start command)
    (:CMD_STOP . stop             # String value for stop command)
    (:CAT_YESNO . yes_no          # Possible answer to a "yes/no" question)
    (:CAT_LOCATION . location     # Location description (e.g. 5th floor, building 37, etc.))
    (:CAT_COMMAND . command       # Command description (e.g. go get coffee))
    (:CAT_GESTURE . gesture       # Verbal indicators for gestures (e.g. here your go))
    (:CAT_ALL . all               # All known phrases))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KomodoSpeechRecCommand>) ostream)
  "Serializes a message object of type '<KomodoSpeechRecCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cat))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KomodoSpeechRecCommand>) istream)
  "Deserializes a message object of type '<KomodoSpeechRecCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cat) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cat) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KomodoSpeechRecCommand>)))
  "Returns string type for a message object of type '<KomodoSpeechRecCommand>"
  "komodo_speech/KomodoSpeechRecCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KomodoSpeechRecCommand)))
  "Returns string type for a message object of type 'KomodoSpeechRecCommand"
  "komodo_speech/KomodoSpeechRecCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KomodoSpeechRecCommand>)))
  "Returns md5sum for a message object of type '<KomodoSpeechRecCommand>"
  "c5edaa9df92bb72f49538155db3b1f31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KomodoSpeechRecCommand)))
  "Returns md5sum for a message object of type 'KomodoSpeechRecCommand"
  "c5edaa9df92bb72f49538155db3b1f31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KomodoSpeechRecCommand>)))
  "Returns full string definition for message of type '<KomodoSpeechRecCommand>"
  (cl:format cl:nil "Header header~%~%# Command meta-data~%string CMD_START=start           # String value for start command ~%string CMD_STOP=stop             # String value for stop command~%~%string cmd                       # Indicate type of command. Value are eiter cmd_start or cmd_stop~%~%# Category data (Might aid in speech recognition)~%string CAT_YESNO=yes_no          # Possible answer to a \"yes/no\" question~%string CAT_LOCATIOn=location     # Location description (e.g. 5th floor, building 37, etc.)~%string CAT_COMMAND=command       # Command description (e.g. go get coffee)~%string CAT_GESTURE=gesture       # Verbal indicators for gestures (e.g. here your go)~%string CAT_ALL=all               # All known phrases~%~%string cat                       # Expected phrase category. Defaults to cat_all~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KomodoSpeechRecCommand)))
  "Returns full string definition for message of type 'KomodoSpeechRecCommand"
  (cl:format cl:nil "Header header~%~%# Command meta-data~%string CMD_START=start           # String value for start command ~%string CMD_STOP=stop             # String value for stop command~%~%string cmd                       # Indicate type of command. Value are eiter cmd_start or cmd_stop~%~%# Category data (Might aid in speech recognition)~%string CAT_YESNO=yes_no          # Possible answer to a \"yes/no\" question~%string CAT_LOCATIOn=location     # Location description (e.g. 5th floor, building 37, etc.)~%string CAT_COMMAND=command       # Command description (e.g. go get coffee)~%string CAT_GESTURE=gesture       # Verbal indicators for gestures (e.g. here your go)~%string CAT_ALL=all               # All known phrases~%~%string cat                       # Expected phrase category. Defaults to cat_all~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KomodoSpeechRecCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'cmd))
     4 (cl:length (cl:slot-value msg 'cat))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KomodoSpeechRecCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'KomodoSpeechRecCommand
    (cl:cons ':header (header msg))
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':cat (cat msg))
))
