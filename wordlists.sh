#!/usr/bin/env bash
echo "[*]wordlists gathering"
mkdir ~/wordlists
cd ~/wordlists
git clone https://github.com/danielmiessler/SecLists.git
wget -nc http://downloads.skullsecurity.org/passwords/rockyou.txt.bz2
wget -nc http://www.tekdefense.com/downloads/wordlists/1aNormusWL.zip
wget -nc http://www.tekdefense.com/downloads/wordlists/KippoWordlist.txt
