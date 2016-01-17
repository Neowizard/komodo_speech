; Auto-generated. Do not edit!


(cl:in-package komodo_speech-msg)


;//! \htmlinclude KomodoSpeechRecResult.msg.html

(cl:defclass <KomodoSpeechRecResult> (roslisp-msg-protocol:ros-message)
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
   (phrase_id
    :reader phrase_id
    :initarg :phrase_id
    :type cl:fixnum
    :initform 0)
   (phrase
    :reader phrase
    :initarg :phrase
    :type cl:string
    :initform ""))
)

(cl:defclass KomodoSpeechRecResult (<KomodoSpeechRecResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KomodoSpeechRecResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KomodoSpeechRecResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name komodo_speech-msg:<KomodoSpeechRecResult> is deprecated: use komodo_speech-msg:KomodoSpeechRecResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <KomodoSpeechRecResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-msg:header-val is deprecated.  Use komodo_speech-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <KomodoSpeechRecResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-msg:success-val is deprecated.  Use komodo_speech-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'phrase_id-val :lambda-list '(m))
(cl:defmethod phrase_id-val ((m <KomodoSpeechRecResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-msg:phrase_id-val is deprecated.  Use komodo_speech-msg:phrase_id instead.")
  (phrase_id m))

(cl:ensure-generic-function 'phrase-val :lambda-list '(m))
(cl:defmethod phrase-val ((m <KomodoSpeechRecResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-msg:phrase-val is deprecated.  Use komodo_speech-msg:phrase instead.")
  (phrase m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<KomodoSpeechRecResult>)))
    "Constants for message type '<KomodoSpeechRecResult>"
  '((:PHRASE_NULL . 255)
    (:PHRASE_AT_FLOOR_1 . 1)
    (:PHRASE_AT_FLOOR_2 . 2)
    (:PHRASE_AT_FLOOR_3 . 3)
    (:PHRASE_AT_FLOOR_4 . 4)
    (:PHRASE_AT_FLOOR_5 . 5)
    (:PHRASE_YES . 6)
    (:PHRASE_NO . 7)
    (:PHRASE_GET_COFFEE . 8)
    (:PHRASE_MOVE_FORWARD . 9)
    (:PHRASE_HERE_YOU_GO . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'KomodoSpeechRecResult)))
    "Constants for message type 'KomodoSpeechRecResult"
  '((:PHRASE_NULL . 255)
    (:PHRASE_AT_FLOOR_1 . 1)
    (:PHRASE_AT_FLOOR_2 . 2)
    (:PHRASE_AT_FLOOR_3 . 3)
    (:PHRASE_AT_FLOOR_4 . 4)
    (:PHRASE_AT_FLOOR_5 . 5)
    (:PHRASE_YES . 6)
    (:PHRASE_NO . 7)
    (:PHRASE_GET_COFFEE . 8)
    (:PHRASE_MOVE_FORWARD . 9)
    (:PHRASE_HERE_YOU_GO . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KomodoSpeechRecResult>) ostream)
  "Serializes a message object of type '<KomodoSpeechRecResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phrase_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'phrase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'phrase))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KomodoSpeechRecResult>) istream)
  "Deserializes a message object of type '<KomodoSpeechRecResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phrase_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'phrase) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'phrase) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KomodoSpeechRecResult>)))
  "Returns string type for a message object of type '<KomodoSpeechRecResult>"
  "komodo_speech/KomodoSpeechRecResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KomodoSpeechRecResult)))
  "Returns string type for a message object of type 'KomodoSpeechRecResult"
  "komodo_speech/KomodoSpeechRecResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KomodoSpeechRecResult>)))
  "Returns md5sum for a message object of type '<KomodoSpeechRecResult>"
  "9a1e790e35de3c5c1e99713cc150ec87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KomodoSpeechRecResult)))
  "Returns md5sum for a message object of type 'KomodoSpeechRecResult"
  "9a1e790e35de3c5c1e99713cc150ec87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KomodoSpeechRecResult>)))
  "Returns full string definition for message of type '<KomodoSpeechRecResult>"
  (cl:format cl:nil "Header header~%bool success               # Did the recognition command complete successfully~%~%# Recognized phrases~%uint8 PHRASE_NULL=255      # Couldn't indentify phrase~%~%uint8 PHRASE_AT_FLOOR_1=1     ~%uint8 PHRASE_AT_FLOOR_2=2~%uint8 PHRASE_AT_FLOOR_3=3~%uint8 PHRASE_AT_FLOOR_4=4~%uint8 PHRASE_AT_FLOOR_5=5~%~%uint8 PHRASE_YES=6~%uint8 PHRASE_NO=7~%~%uint8 PHRASE_GET_COFFEE=8~%uint8 PHRASE_MOVE_FORWARD=9~%uint8 PHRASE_HERE_YOU_GO=10~%~%uint8 phrase_id               # ID of recognized phrase. ~%string phrase               # If phrase_id=PHRASE_NULL, this will hold the recognized phrase as string~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KomodoSpeechRecResult)))
  "Returns full string definition for message of type 'KomodoSpeechRecResult"
  (cl:format cl:nil "Header header~%bool success               # Did the recognition command complete successfully~%~%# Recognized phrases~%uint8 PHRASE_NULL=255      # Couldn't indentify phrase~%~%uint8 PHRASE_AT_FLOOR_1=1     ~%uint8 PHRASE_AT_FLOOR_2=2~%uint8 PHRASE_AT_FLOOR_3=3~%uint8 PHRASE_AT_FLOOR_4=4~%uint8 PHRASE_AT_FLOOR_5=5~%~%uint8 PHRASE_YES=6~%uint8 PHRASE_NO=7~%~%uint8 PHRASE_GET_COFFEE=8~%uint8 PHRASE_MOVE_FORWARD=9~%uint8 PHRASE_HERE_YOU_GO=10~%~%uint8 phrase_id               # ID of recognized phrase. ~%string phrase               # If phrase_id=PHRASE_NULL, this will hold the recognized phrase as string~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KomodoSpeechRecResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4 (cl:length (cl:slot-value msg 'phrase))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KomodoSpeechRecResult>))
  "Converts a ROS message object to a list"
  (cl:list 'KomodoSpeechRecResult
    (cl:cons ':header (header msg))
    (cl:cons ':success (success msg))
    (cl:cons ':phrase_id (phrase_id msg))
    (cl:cons ':phrase (phrase msg))
))
