CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests


if [[ -f ./student-submission/ListExamples.java ]]
    then
        echo "File Name is Correct!"
    else
        echo "FILE NAME INCORRECT! No Such File Named: (ListExamples.java)"
        exit
fi

cp -r ./student-submission/ListExamples.java ./grading-area/
cp -r ./TestListExamples.java ./grading-area/

javac -cp ".;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar" ./grading-area/TestListExamples.java ./grading-area/ListExamples.java


if [[ $? -eq 0 ]]
    then
        echo "Success"
    else
        echo "Failed Did not work"
fi

