#!/bin/bash

awk '{print NR}' /etc/passwd |tail -n1
