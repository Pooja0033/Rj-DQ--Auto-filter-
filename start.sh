if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Pooja0033/Prv-DQ--Auto-filter-.git /Prv-DQ--Auto-filter-
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Prv-DQ--Auto-filter-
fi
cd /Prv-DQ--Auto-filter-
pip3 install -U -r requirements.txt
echo "Starting DQ-The-File-Donor...."
python3 bot.py
