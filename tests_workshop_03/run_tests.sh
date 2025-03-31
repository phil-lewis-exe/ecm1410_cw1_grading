#!bash
score=0
if bash ./tests/test_01_DemoIncrement.sh; then ((score+=10)); fi
echo ----
if bash ./tests/test_02_AgeToGroup.sh; then ((score+=10)); fi
echo ----
if bash ./tests/test_03_NumbersInSpanish.sh; then ((score+=10)); fi
echo ----
if bash ./tests/test_04_PrintSquares.sh; then ((score+=10)); fi
echo ----
if bash ./tests/test_05_SumSquares.sh; then ((score+=10)); fi
echo ----
if bash ./tests/test_06_AverageSquares.sh; then ((score+=10)); fi
echo ----
if bash ./tests/test_07_PrintPattern1.sh; then ((score+=10)); fi
echo ----
if bash ./tests/test_08_PrintPattern2.sh; then ((score+=5)); fi
echo ----
echo --- RESULT: ---
echo ${score} > ../workshop_03_score.txt
echo Your score is $score / 75