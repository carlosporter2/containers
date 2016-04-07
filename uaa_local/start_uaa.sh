#! /bin/bash

# Configuration in this file is overridden by an external file
# if any of these exist:
# [$UAA_CONFIG_URL, $UAA_CONFIG_PATH/uaa.yml, $CLOUD_FOUNDRY_CONFIG_PATH/uaa.yml]

cd /opt/uaa

mkdir -p /opt/uaa/uaa/build/reports/tests && touch /opt/uaa/uaa/build/reports/tests/uaa-server.log

./gradlew --stacktrace --info -Dspring.profiles.active=default,hsqldb run  &> /var/log/gradlew_run.log   &

tail -n 1 -f /var/log/gradlew_run.log /opt/uaa/uaa/build/reports/tests/uaa-server.log
