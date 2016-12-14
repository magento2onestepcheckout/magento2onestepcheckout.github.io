#!/bin/bash

msg=$1

git pull && git add . && git commit -m "Sam: update $msg" && git push
