#! /bin/bash
kill `ps -Af | grep recognizer | cut -d'+' -f2 | tr -s " " | cut -d' ' -f2`

exit 0
