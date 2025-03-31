
w3=`grep -A 1 "WORKSHOP 3" $1 | tail -n 1 | awk -F '/' '{print $NF}'`
echo $w3
c3=`grep -A 2 "WORKSHOP 3" $1 | tail -n 1 | awk  '{print $2}'`
echo $c3
git clone https://github.com/My-UofE/$w3
cd $w3
git checkout $c3
git show --no-patch --no-notes --pretty='%cd' $c3 > ../workshop3_commit_time.txt
rm ./tests/*
cp ../tests_workshop_03/* ./tests/*
bash ./tests/test_all.sh >& ../workshop3_tests_output.log