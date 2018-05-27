#!/bin/bash

sleep 30
/usr/sbin/httpd -DFOREGROUND & sleep 10 && pkill httpd
