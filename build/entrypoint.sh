#!/bin/sh
chmod 400 /my_key
eval `ssh-agent -s`
ssh-add /my_key
git config --global user.name "Website cloud build bot"
git config --global user.email "buildbot@cloud-build.com"
git $@