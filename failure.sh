echo "import sys" >  testing.py
echo "print \"This is a Failing build\"" >> testing.py
echo "sys.exit(-1)" >> testing.py

git add .

git commit -m "Failing Commit"

git push origin master