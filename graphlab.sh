#!/bin/bash

EMAIL_ADDRESS=${1}
LICENCE_KEY=${2}

if [[ -z ${EMAIL_ADDRESS} || -z ${LICENCE_KEY} ]]
then
	echo "Error: EMAIL_ADDRESS or LICENCE_KEY is missing"
	echo
	echo "Usage: ./graphlab.sh EMAIL_ADDRESS LICENCE_KEY"
	echo
	exit -1
fi

sudo pip install https://get.dato.com/GraphLab-Create/1.8.4/${EMAIL_ADDRESS}/${LICENCE_KEY}/GraphLab-Create-License.tar.gz
sudo deluser ${USER} sudo
