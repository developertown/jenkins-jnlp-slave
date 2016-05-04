#!/bin/bash

curl -O ${JENKINS_URL}/jnlpJars/slave.jar \
  && java \
    -jar slave.jar \
    -jnlpUrl ${JENKINS_URL}/computer/${JENKINS_NODE_NAME}/slave-agent.jnlp \
    -jnlpCredentials ${JENKINS_USER}:${JENKINS_PASS}
