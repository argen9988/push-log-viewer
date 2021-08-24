@echo off

cd %cd%

java -ea -Dlog-viewer.config-file=%cd%/config.conf -jar %cd%/lib/log-viewer-cli-0.1.6.jar startup
