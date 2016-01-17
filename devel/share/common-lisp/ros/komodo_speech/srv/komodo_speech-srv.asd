
(cl:in-package :asdf)

(defsystem "komodo_speech-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "KomodoSpeechRunning" :depends-on ("_package_KomodoSpeechRunning"))
    (:file "_package_KomodoSpeechRunning" :depends-on ("_package"))
  ))