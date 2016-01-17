FILE(REMOVE_RECURSE
  "CMakeFiles/komodo_speech_generate_messages_cpp"
  "/home/komodo/komodo_speech/devel/include/komodo_speech/KomodoSpeechSayResult.h"
  "/home/komodo/komodo_speech/devel/include/komodo_speech/KomodoSpeechSayCommand.h"
  "/home/komodo/komodo_speech/devel/include/komodo_speech/KomodoSpeechRecResult.h"
  "/home/komodo/komodo_speech/devel/include/komodo_speech/KomodoSpeechRecCommand.h"
  "/home/komodo/komodo_speech/devel/include/komodo_speech/KomodoSpeechRunning.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/komodo_speech_generate_messages_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
