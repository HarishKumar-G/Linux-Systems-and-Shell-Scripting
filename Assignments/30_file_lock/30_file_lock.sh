#!/bin/bash

<< coment
a script to locks down file permissions for a particular directory.
coment
cwd=`echo $PWD`

chmod 600 "$cwd/$1"
