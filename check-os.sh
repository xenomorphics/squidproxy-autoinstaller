#!/bin/bash

if cat /etc/os-release | grep PRETTY_NAME | grep "Ubuntu 20.04" > /dev/null; then
    echo "ubuntu2004"
elif cat /etc/os-release | grep PRETTY_NAME | grep "Ubuntu 18.04" > /dev/null; then
    echo "ubuntu1804"
elif cat /etc/os-release | grep PRETTY_NAME | grep "Ubuntu 16.04" > /dev/null; then
    echo "ubuntu1604"
elif cat /etc/*release | grep DISTRIB_DESCRIPTION | grep "Ubuntu 14.04" > /dev/null; then
    echo "ubuntu1404"
elif cat /etc/os-release | grep PRETTY_NAME | grep "jessie" > /dev/null; then
    echo "debian8"
elif cat /etc/os-release | grep PRETTY_NAME | grep "stretch" > /dev/null; then
    echo "debian9"
elif cat /etc/os-release | grep PRETTY_NAME | grep "buster" > /dev/null; then
    echo "debian10"
elif cat /etc/os-release | grep PRETTY_NAME | grep "CentOS Linux 7" > /dev/null; then
    echo "centos7"
elif cat /etc/os-release | grep PRETTY_NAME | grep "CentOS Linux 8" > /dev/null; then
    echo "centos8"
else
    echo "OS NOT SUPPORTED.\n"
    exit 1;
fi
