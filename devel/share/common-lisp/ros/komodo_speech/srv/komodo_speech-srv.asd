
(cl:in-package :asdf)

(defsystem "komodo_speech-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "KomodoSpeechProcessing" :depends-on ("_package_KomodoSpeechProcessing"))
    (:file "_package_KomodoSpeechProcessing" :depends-on ("_package"))
  ))