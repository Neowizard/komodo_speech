; Auto-generated. Do not edit!


(cl:in-package komodo_speech-srv)


;//! \htmlinclude KomodoSpeechRunning-request.msg.html

(cl:defclass <KomodoSpeechRunning-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass KomodoSpeechRunning-request (<KomodoSpeechRunning-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KomodoSpeechRunning-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KomodoSpeechRunning-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name komodo_speech-srv:<KomodoSpeechRunning-request> is deprecated: use komodo_speech-srv:KomodoSpeechRunning-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KomodoSpeechRunning-request>) ostream)
  "Serializes a message object of type '<KomodoSpeechRunning-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KomodoSpeechRunning-request>) istream)
  "Deserializes a message object of type '<KomodoSpeechRunning-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KomodoSpeechRunning-request>)))
  "Returns string type for a service object of type '<KomodoSpeechRunning-request>"
  "komodo_speech/KomodoSpeechRunningRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KomodoSpeechRunning-request)))
  "Returns string type for a service object of type 'KomodoSpeechRunning-request"
  "komodo_speech/KomodoSpeechRunningRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KomodoSpeechRunning-request>)))
  "Returns md5sum for a message object of type '<KomodoSpeechRunning-request>"
  "14c43fbec2ed75ad470309f9d3538198")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KomodoSpeechRunning-request)))
  "Returns md5sum for a message object of type 'KomodoSpeechRunning-request"
  "14c43fbec2ed75ad470309f9d3538198")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KomodoSpeechRunning-request>)))
  "Returns full string definition for message of type '<KomodoSpeechRunning-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KomodoSpeechRunning-request)))
  "Returns full string definition for message of type 'KomodoSpeechRunning-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KomodoSpeechRunning-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KomodoSpeechRunning-request>))
  "Converts a ROS message object to a list"
  (cl:list 'KomodoSpeechRunning-request
))
;//! \htmlinclude KomodoSpeechRunning-response.msg.html

(cl:defclass <KomodoSpeechRunning-response> (roslisp-msg-protocol:ros-message)
  ((processing
    :reader processing
    :initarg :processing
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass KomodoSpeechRunning-response (<KomodoSpeechRunning-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KomodoSpeechRunning-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KomodoSpeechRunning-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name komodo_speech-srv:<KomodoSpeechRunning-response> is deprecated: use komodo_speech-srv:KomodoSpeechRunning-response instead.")))

(cl:ensure-generic-function 'processing-val :lambda-list '(m))
(cl:defmethod processing-val ((m <KomodoSpeechRunning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-srv:processing-val is deprecated.  Use komodo_speech-srv:processing instead.")
  (processing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KomodoSpeechRunning-response>) ostream)
  "Serializes a message object of type '<KomodoSpeechRunning-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'processing) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KomodoSpeechRunning-response>) istream)
  "Deserializes a message object of type '<KomodoSpeechRunning-response>"
    (cl:setf (cl:slot-value msg 'processing) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KomodoSpeechRunning-response>)))
  "Returns string type for a service object of type '<KomodoSpeechRunning-response>"
  "komodo_speech/KomodoSpeechRunningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KomodoSpeechRunning-response)))
  "Returns string type for a service object of type 'KomodoSpeechRunning-response"
  "komodo_speech/KomodoSpeechRunningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KomodoSpeechRunning-response>)))
  "Returns md5sum for a message object of type '<KomodoSpeechRunning-response>"
  "14c43fbec2ed75ad470309f9d3538198")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KomodoSpeechRunning-response)))
  "Returns md5sum for a message object of type 'KomodoSpeechRunning-response"
  "14c43fbec2ed75ad470309f9d3538198")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KomodoSpeechRunning-response>)))
  "Returns full string definition for message of type '<KomodoSpeechRunning-response>"
  (cl:format cl:nil "bool processing~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KomodoSpeechRunning-response)))
  "Returns full string definition for message of type 'KomodoSpeechRunning-response"
  (cl:format cl:nil "bool processing~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KomodoSpeechRunning-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KomodoSpeechRunning-response>))
  "Converts a ROS message object to a list"
  (cl:list 'KomodoSpeechRunning-response
    (cl:cons ':processing (processing msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'KomodoSpeechRunning)))
  'KomodoSpeechRunning-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'KomodoSpeechRunning)))
  'KomodoSpeechRunning-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KomodoSpeechRunning)))
  "Returns string type for a service object of type '<KomodoSpeechRunning>"
  "komodo_speech/KomodoSpeechRunning")