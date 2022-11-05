#!/usr/bin/env bash

for f in ./*.org
do
    emacs $f --batch --eval="(org-md-export-to-markdown)"
done
