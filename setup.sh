#! /bin/bash
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.6
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.6 get-pip.py
sudo pip install requests
sudo pip install requests_html
sudo pip install discord
wget https://raw.githubusercontent.com/teamshortcut/Discord-Maths-Bot/master/maths-bot.py
sed -i 's/TOKEN[[:space:]]=[[:space:]]\"XXX\"/TOKEN = \"YOURTOKEN\"/g' maths-bot.py
wget https://gist.githubusercontent.com/teamshortcut/547b8561ddc1120104c08cc7f4a5ea46/raw/7abca156c50f6b708232d98a8959510ee2dc8e8c/ensurebotrunning.sh
chmod +x ensurebotrunning.sh
sed -i 's/aaron/USERNAME/g' ensurebotrunning.sh
(crontab -l 2>/dev/null; echo "* * * * * /home/USERNAME/ensurebotrunning.sh") | crontab -