; Auto-generated. Do not edit!


(cl:in-package komodo_speech-msg)


;//! \htmlinclude KomodoSpeechSayCommand.msg.html

(cl:defclass <KomodoSpeechSayCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (text_to_say
    :reader text_to_say
    :initarg :text_to_say
    :type cl:string
    :initform ""))
)

(cl:defclass KomodoSpeechSayCommand (<KomodoSpeechSayCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KomodoSpeechSayCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KomodoSpeechSayCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name komodo_speech-msg:<KomodoSpeechSayCommand> is deprecated: use komodo_speech-msg:KomodoSpeechSayCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <KomodoSpeechSayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-msg:header-val is deprecated.  Use komodo_speech-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'text_to_say-val :lambda-list '(m))
(cl:defmethod text_to_say-val ((m <KomodoSpeechSayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-msg:text_to_say-val is deprecated.  Use komodo_speech-msg:text_to_say instead.")
  (text_to_say m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KomodoSpeechSayCommand>) ostream)
  "Serializes a message object of type '<KomodoSpeechSayCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text_to_say))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text_to_say))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KomodoSpeechSayCommand>) istream)
  "Deserializes a message object of type '<KomodoSpeechSayCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text_to_say) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text_to_say) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KomodoSpeechSayCommand>)))
  "Returns string type for a message object of type '<KomodoSpeechSayCommand>"
  "komodo_speech/KomodoSpeechSayCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KomodoSpeechSayCommand)))
  "Returns string type for a message object of type 'KomodoSpeechSayCommand"
  "komodo_speech/KomodoSpeechSayCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KomodoSpeechSayCommand>)))
  "Returns md5sum for a message object of type '<KomodoSpeechSayCommand>"
  "ca02ab5da1cc249bfc8fa9e0159e79d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KomodoSpeechSayCommand)))
  "Returns md5sum for a message object of type 'KomodoSpeechSayCommand"
  "ca02ab5da1cc249bfc8fa9e0159e79d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KomodoSpeechSayCommand>)))
  "Returns full string definition for message of type '<KomodoSpeechSayCommand>"
  (cl:format cl:nil "Header header~%~%string text_to_say # Phrase to synthesize into speech~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KomodoSpeechSayCommand)))
  "Returns full string definition for message of type 'KomodoSpeechSayCommand"
  (cl:format cl:nil "Header header~%~%string text_to_say # Phrase to synthesize into speech~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KomodoSpeechSayCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'text_to_say))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KomodoSpeechSayCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'KomodoSpeechSayCommand
    (cl:cons ':header (header msg))
    (cl:cons ':text_to_say (text_to_say msg))
))
