#!/bin/sh

ETLPATH="{{ TENGINE_APP_LOG_DIR }}"

#clean old tengine log
cd ${ETLPATH}
find ./* -type d ! -mtime -15 -exec rm -rf {} \;
