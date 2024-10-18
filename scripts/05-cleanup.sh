#!/bin/bash
#******************************************************************************

oc delete queuemanager "$1" -n ${2}
export routename="sni-${1}chl-ibm-mq-qm"
oc delete route $routename -n ${2}

export pvc1name="data-${1}-ibm-mq-0"
oc delete pvc $pvc1name -n ${2}

export pvc2name="${1}-ibm-mq-persisted-data"
oc delete pvc $pvc2name -n ${2}

export pvc1name="data-${1}-ibm-mq-1"
oc delete pvc $pvc1name -n ${2}

export pvc2name="${1}-ibm-mq-persisted-data-0"
oc delete pvc $pvc2name -n ${2}

export pvc1name="data-${1}-ibm-mq-2"
oc delete pvc $pvc1name -n ${2}

export pvc2name="${1}-ibm-mq-persisted-data-1"
oc delete pvc $pvc2name -n ${2}

export pvc2name="${1}-ibm-mq-persisted-data-2"
oc delete pvc $pvc2name -n ${2}

oc delete project ${2}