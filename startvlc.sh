#!/bin/bash
cvlc -I rc --telnet-password $PASSWORD --telnet-host 0.0.0.0 --http-password $PASSWORD --extraintf http --rc-host 0.0.0.0:$RC_PORT --vlm-conf /setup_vlm.conf --sout-http-mime video/mp4
