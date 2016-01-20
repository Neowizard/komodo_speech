; Auto-generated. Do not edit!


(cl:in-package komodo_speech-srv)


;//! \htmlinclude KomodoSpeechProcessing-request.msg.html

(cl:defclass <KomodoSpeechProcessing-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass KomodoSpeechProcessing-request (<KomodoSpeechProcessing-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KomodoSpeechProcessing-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KomodoSpeechProcessing-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name komodo_speech-srv:<KomodoSpeechProcessing-request> is deprecated: use komodo_speech-srv:KomodoSpeechProcessing-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KomodoSpeechProcessing-request>) ostream)
  "Serializes a message object of type '<KomodoSpeechProcessing-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KomodoSpeechProcessing-request>) istream)
  "Deserializes a message object of type '<KomodoSpeechProcessing-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KomodoSpeechProcessing-request>)))
  "Returns string type for a service object of type '<KomodoSpeechProcessing-request>"
  "komodo_speech/KomodoSpeechProcessingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KomodoSpeechProcessing-request)))
  "Returns string type for a service object of type 'KomodoSpeechProcessing-request"
  "komodo_speech/KomodoSpeechProcessingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KomodoSpeechProcessing-request>)))
  "Returns md5sum for a message object of type '<KomodoSpeechProcessing-request>"
  "14c43fbec2ed75ad470309f9d3538198")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KomodoSpeechProcessing-request)))
  "Returns md5sum for a message object of type 'KomodoSpeechProcessing-request"
  "14c43fbec2ed75ad470309f9d3538198")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KomodoSpeechProcessing-request>)))
  "Returns full string definition for message of type '<KomodoSpeechProcessing-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KomodoSpeechProcessing-request)))
  "Returns full string definition for message of type 'KomodoSpeechProcessing-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KomodoSpeechProcessing-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KomodoSpeechProcessing-request>))
  "Converts a ROS message object to a list"
  (cl:list 'KomodoSpeechProcessing-request
))
;//! \htmlinclude KomodoSpeechProcessing-response.msg.html

(cl:defclass <KomodoSpeechProcessing-response> (roslisp-msg-protocol:ros-message)
  ((processing
    :reader processing
    :initarg :processing
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass KomodoSpeechProcessing-response (<KomodoSpeechProcessing-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KomodoSpeechProcessing-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KomodoSpeechProcessing-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name komodo_speech-srv:<KomodoSpeechProcessing-response> is deprecated: use komodo_speech-srv:KomodoSpeechProcessing-response instead.")))

(cl:ensure-generic-function 'processing-val :lambda-list '(m))
(cl:defmethod processing-val ((m <KomodoSpeechProcessing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader komodo_speech-srv:processing-val is deprecated.  Use komodo_speech-srv:processing instead.")
  (processing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KomodoSpeechProcessing-response>) ostream)
  "Serializes a message object of type '<KomodoSpeechProcessing-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'processing) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KomodoSpeechProcessing-response>) istream)
  "Deserializes a message object of type '<KomodoSpeechProcessing-response>"
    (cl:setf (cl:slot-value msg 'processing) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KomodoSpeechProcessing-response>)))
  "Returns string type for a service object of type '<KomodoSpeechProcessing-response>"
  "komodo_speech/KomodoSpeechProcessingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KomodoSpeechProcessing-response)))
  "Returns string type for a service object of type 'KomodoSpeechProcessing-response"
  "komodo_speech/KomodoSpeechProcessingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KomodoSpeechProcessing-response>)))
  "Returns md5sum for a message object of type '<KomodoSpeechProcessing-response>"
  "14c43fbec2ed75ad470309f9d3538198")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KomodoSpeechProcessing-response)))
  "Returns md5sum for a message object of type 'KomodoSpeechProcessing-response"
  "14c43fbec2ed75ad470309f9d3538198")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KomodoSpeechProcessing-response>)))
  "Returns full string definition for message of type '<KomodoSpeechProcessing-response>"
  (cl:format cl:nil "bool processing~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KomodoSpeechProcessing-response)))
  "Returns full string definition for message of type 'KomodoSpeechProcessing-response"
  (cl:format cl:nil "bool processing~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KomodoSpeechProcessing-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KomodoSpeechProcessing-response>))
  "Converts a ROS message object to a list"
  (cl:list 'KomodoSpeechProcessing-response
    (cl:cons ':processing (processing msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'KomodoSpeechProcessing)))
  'KomodoSpeechProcessing-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'KomodoSpeechProcessing)))
  'KomodoSpeechProcessing-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KomodoSpeechProcessing)))
  "Returns string type for a service object of type '<KomodoSpeechProcessing>"
  "komodo_speech/KomodoSpeechProcessing")