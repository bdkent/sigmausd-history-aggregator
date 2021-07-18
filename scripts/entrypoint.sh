#!/bin/bash

echo "STEP: git config"
git config --global user.name "sigma-usd-bot"
git config --global user.email "87584822+sigma-usd-bot@users.noreply.github.com"

echo "STEP: git clone"
cd /root/git
[ ! -d '/root/git/sigmausd-history' ] && git clone -q git@github.com:bdkent/sigmausd-history.git

echo "STEP: npm install"
cd /root/git/sigmausd-history
npm install

echo "STEP: container.env"
declare -p | grep -Ev 'BASHOPTS|BASH_VERSINFO|EUID|PPID|SHELLOPTS|UID' > /container.env

echo "STEP: initialize cron"
crontab /scheduler.txt
cron -f

echo "END"
