#!bin/bash

<< coment
a script to rename current working directory with given name.
coment

mv -T "$PWD" "../$1"
