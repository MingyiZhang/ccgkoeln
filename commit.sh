#!/usr/bin/env sh
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git add .
git commit -m "$msg"
git push origin master
