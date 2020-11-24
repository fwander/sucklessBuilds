#!/bin/bash
amixer set Master toggle > /dev/null
pid=$(cat ~/.sbpid)
kill -RTMIN+12  $pid


