echo "import sys" > testing.py
echo "import os" >> testing.py
echo "print \"This is a successful build\"" >> testing.py
echo "print os.environ['DUMMY_VARIABLE']" >> testing.py
echo "sys.exit(0)" >> testing.py

git add .

git commit -m "Successful Commit"

git push origin master