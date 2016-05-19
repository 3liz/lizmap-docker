#!/usr/bin/env bash

# Abort on error
set -e

LIZMAP_HOME=/srv/lizmap-web-client

unzip /srv/master.zip -d /srv/
mv /srv/lizmap-web-client-master $LIZMAP_HOME
rm /srv/master.zip

# Set rights & active config
chmod +x $LIZMAP_HOME/lizmap/install/set_rights.sh
$LIZMAP_HOME/lizmap/install/set_rights.sh www-data www-data

cp /lizmapConfig.ini.php.dist $LIZMAP_HOME/lizmap/var/config/lizmapConfig.ini.ph
cp $LIZMAP_HOME/lizmap/var/config/localconfig.ini.php.dist $LIZMAP_HOME/lizmap/var/config/localconfig.ini.php
cp $LIZMAP_HOME/lizmap/var/config/profiles.ini.php.dist $LIZMAP_HOME/lizmap/var/config/profiles.ini.php

#  Installer
php $LIZMAP_HOME/lizmap/install/installer.php

# Set rights
chown :www-data $LIZMAP_HOME/lizmap/www -R && chmod 775  $LIZMAP_HOME/lizmap/www -R
chown :www-data $LIZMAP_HOME/lizmap/var -R  && chmod 775  $LIZMAP_HOME/lizmap/var -R


