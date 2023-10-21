#!/bin/bash

for arg in "$@"
do
  python3 /usr/local/lib/Secure-Password-Checker/src/main.py $arg
done
