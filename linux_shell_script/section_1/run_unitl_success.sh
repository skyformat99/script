#!/bin/bash

function repeat(){
    while true
    do
        $@ && return
    done
}
