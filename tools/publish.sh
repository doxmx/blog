#!/bin/bash

hugo
cd public
git add .
msg="Rebuild site $(date +%F %T)"
git commit -m "$msg" .
git push origin master
cd ..
