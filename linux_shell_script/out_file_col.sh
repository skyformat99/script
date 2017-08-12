#!/bin/bash


awk -F ':' '{print $3}' /etc/passwd
