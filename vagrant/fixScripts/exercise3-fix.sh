#!/bin/bash
for i in {1..1}; do sed -i '/deny from all/d' /etc/apache2/sites-enabled/000-default ; done
for i in {1..1}; do sed -i s/"allow,deny"/"deny,allow"/g /etc/apache2/sites-enabled/000-default ; done
/etc/init.d/apache2 restart
