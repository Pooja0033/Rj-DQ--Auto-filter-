if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Pooja0033/Rj-DQ--Auto-filter-.git /Prv-DQ--Auto-filter-
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Rj-DQ--Auto-filter-
fi
cd /Rj-DQ--Auto-filter-
pip3 install -U -r requirements.txt
echo "Starting Prv-DQ--Auto-filter-...."
python3 bot.py
