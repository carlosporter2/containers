#!/bin/bash

# Configuration in this file is overridden by an external file
# if any of these exist:
# [$UAA_CONFIG_URL, $UAA_CONFIG_PATH/uaa.yml, $CLOUD_FOUNDRY_CONFIG_PATH/uaa.yml]

cd /opt/uaa

./gradlew -Dspring.profiles.active=default,hsqldb run
