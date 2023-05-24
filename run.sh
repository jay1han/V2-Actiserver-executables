#!/usr/bin/bash

systemctl daemon-reload
systemctl enable actiserver
systemctl start actiserver

