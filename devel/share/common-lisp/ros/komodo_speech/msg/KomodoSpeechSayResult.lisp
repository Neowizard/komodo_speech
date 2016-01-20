; Auto-generated. Do not edit!


(cl:in-package komodo_speech-msg)


;//! \htmlinclude KomodoSpeechSayResult.msg.html

(cl:defclass <KomodoSpeechSayResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (said_text
    :reader said_text
    :initarg :said_text
    :type cl:string
    :initform ""))
)

(cl:defclass KomodoSpeechSayResult (<KomodoSpeechSayResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KomodoSpeechSayResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KomodoSpeechSayResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name komodo_speech-msg:<KomodoSpeechSayResult> is deprecated: use komodo_speech-msg:KomodoSpeechSayResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <KomodoSpeechSayResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-msg:header-val is deprecated.  Use komodo_speech-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <KomodoSpeechSayResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-msg:success-val is deprecated.  Use komodo_speech-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'said_text-val :lambda-list '(m))
(cl:defmethod said_text-val ((m <KomodoSpeechSayResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-msg:said_text-val is deprecated.  Use komodo_speech-msg:said_text instead.")
  (said_text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KomodoSpeechSayResult>) ostream)
  "Serializes a message object of type '<KomodoSpeechSayResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'said_text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'said_text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KomodoSpeechSayResult>) istream)
  "Deserializes a message object of type '<KomodoSpeechSayResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'said_text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'said_text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KomodoSpeechSayResult>)))
  "Returns string type for a message object of type '<KomodoSpeechSayResult>"
  "komodo_speech/KomodoSpeechSayResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KomodoSpeechSayResult)))
  "Returns string type for a message object of type 'KomodoSpeechSayResult"
  "komodo_speech/KomodoSpeechSayResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KomodoSpeechSayResult>)))
  "Returns md5sum for a message object of type '<KomodoSpeechSayResult>"
  "dcfc4a16970f2ac31b5c6eb8edf3edcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KomodoSpeechSayResult)))
  "Returns md5sum for a message object of type 'KomodoSpeechSayResult"
  "dcfc4a16970f2ac31b5c6eb8edf3edcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KomodoSpeechSayResult>)))
  "Returns full string definition for message of type '<KomodoSpeechSayResult>"
  (cl:format cl:nil "Header header~%bool success            # Did the last \"say\" command succeed~%string said_text        # The text that was given as part of the \"say\" command  ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KomodoSpeechSayResult)))
  "Returns full string definition for message of type 'KomodoSpeechSayResult"
  (cl:format cl:nil "Header header~%bool success            # Did the last \"say\" command succeed~%string said_text        # The text that was given as part of the \"say\" command  ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KomodoSpeechSayResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'said_text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KomodoSpeechSayResult>))
  "Converts a ROS message object to a list"
  (cl:list 'KomodoSpeechSayResult
    (cl:cons ':header (header msg))
    (cl:cons ':success (success msg))
    (cl:cons ':said_text (said_text msg))
))
