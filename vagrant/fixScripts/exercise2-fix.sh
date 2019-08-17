#!/bin/bash
grep -v www.ascii-art.de /etc/hosts > /tmp/temp.file
cat /tmp/temp.file > /etc/hosts
rm -rf /tmp/temp.file
