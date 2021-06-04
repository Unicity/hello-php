#!/usr/bin/env bash

ENV=${HYDRA_ENV}

function enableDebugger() {
  if [ "$ENV" = "dev" ]; then
    phpenmod xdebug && export XDEBUG_ENABLED=1
  fi
}

function startSupervisor() {
  supervisord --nodaemon --configuration /etc/supervisor/supervisord.conf
}

function stripStrictness() {
  DIR=${STRIP_STRICT}
  MASK="1s|^<?php[[:blank:]]\{1,\}declare[[:blank:]]\{0,\}([[:blank:]]\{0,\}strict_types[[:blank:]]\{0,\}=[[:blank:]]\{0,\}1[[:blank:]]\{0,\})[[:blank:]]\{0,\};|<?php|"

  if [ "$ENV" != "dev" ] && [ -d "$DIR" ]; then
    find "$DIR" -type f -name "*.php" -exec sed -i "${MASK}" {} +
  fi
}

enableDebugger;
stripStrictness;
startSupervisor;
