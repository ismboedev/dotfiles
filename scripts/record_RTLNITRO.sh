#!/bin/zsh

echo "sleeping now for"
echo "$1"
echo "and then recording RTLNITRO for 1hour and 10min"

sleep "$1"

termite --exec=/home/ismboe/Dokumente/dev/dvb-t_record/start_RTLNITRO.sh --hold &

sleep 10s

termite --exec=/home/ismboe/Dokumente/dev/dvb-t_record/start_record.sh --hold
