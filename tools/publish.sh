#!/bin/bash

hugo
cd public
git add .
msg_sub="Rebuild site $(date +%F %T)"
git commit -m "${msg_sub}" .
git push origin master
cd ..
git add .
msg="Updating gh-pages submodule"
git commit -m "${msg}"
git push origin master
