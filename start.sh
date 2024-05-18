if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ajay20217/omgfile /omgfile
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /omgfile
fi
cd /omgfile
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
