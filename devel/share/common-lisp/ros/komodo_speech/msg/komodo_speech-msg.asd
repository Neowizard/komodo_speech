
(cl:in-package :asdf)

(defsystem "komodo_speech-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "KomodoSpeechSayCommand" :depends-on ("_package_KomodoSpeechSayCommand"))
    (:file "_package_KomodoSpeechSayCommand" :depends-on ("_package"))
    (:file "KomodoSpeechSayResult" :depends-on ("_package_KomodoSpeechSayResult"))
    (:file "_package_KomodoSpeechSayResult" :depends-on ("_package"))
    (:file "KomodoSpeechRecCommand" :depends-on ("_package_KomodoSpeechRecCommand"))
    (:file "_package_KomodoSpeechRecCommand" :depends-on ("_package"))
    (:file "KomodoSpeechRecResult" :depends-on ("_package_KomodoSpeechRecResult"))
    (:file "_package_KomodoSpeechRecResult" :depends-on ("_package"))
  ))