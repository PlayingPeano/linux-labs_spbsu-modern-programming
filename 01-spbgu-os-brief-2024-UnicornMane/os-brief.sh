#!/bin/bash

DISTRIBUTIVE_NAME=$(lsb_release -i | awk -F ':\t*' '{print $2}')
DISTRIBUTIVE_VERSION=$(lsb_release -r | awk '{print $2}')
KERNEL_VERSION=$(uname -r)
TOTAL_RAM=$(free -h | awk '/^Mem:/{print $2}')
USED_ROOT_SPACE=$(df -BG / | awk 'NR==2{print $3}')

Yellow=`tput setaf 3`       # Yellow
ColorReset=`tput sgr0` # No Color

echo "${Yellow}Distributive name${ColorReset}: ${DISTRIBUTIVE_NAME}"
echo "${Yellow}Distributive version${ColorReset}: ${DISTRIBUTIVE_VERSION}"
echo "${Yellow}Kernel version${ColorReset}: ${KERNEL_VERSION}"
echo "${Yellow}Total RAM${ColorReset}: ${TOTAL_RAM}"
echo "${Yellow}Used root space${ColorReset}: ${USED_ROOT_SPACE}"
