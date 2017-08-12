#!/bin/bash

case ${2} in
    '+')
        echo   ${1}+${3}|bc
        ;;
    "-")
        echo   ${1}-${3}|bc
        ;;
    "*")
        echo ${1}*${3}|bc
        ;;
    "/")
         echo ${1}/${3}|bc
         ;;
esac
