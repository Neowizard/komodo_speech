FILE(REMOVE_RECURSE
  "CMakeFiles/komodo_speech_generate_messages_py"
  "/home/komodo/komodo_speech/devel/lib/python2.7/dist-packages/komodo_speech/msg/_KomodoSpeechSayResult.py"
  "/home/komodo/komodo_speech/devel/lib/python2.7/dist-packages/komodo_speech/msg/_KomodoSpeechSayCommand.py"
  "/home/komodo/komodo_speech/devel/lib/python2.7/dist-packages/komodo_speech/msg/_KomodoSpeechRecResult.py"
  "/home/komodo/komodo_speech/devel/lib/python2.7/dist-packages/komodo_speech/msg/_KomodoSpeechRecCommand.py"
  "/home/komodo/komodo_speech/devel/lib/python2.7/dist-packages/komodo_speech/srv/_KomodoSpeechRunning.py"
  "/home/komodo/komodo_speech/devel/lib/python2.7/dist-packages/komodo_speech/msg/__init__.py"
  "/home/komodo/komodo_speech/devel/lib/python2.7/dist-packages/komodo_speech/srv/__init__.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/komodo_speech_generate_messages_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
