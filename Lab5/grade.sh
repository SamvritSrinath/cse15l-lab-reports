# ssh cs15lwi23ash@ieng6.ucsd.edu


git clone https://github.com/SamvritSrinath/lab7.git
echo "Finished Cloning"

cd lab7

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java

java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExampleTests 2>&1
#Debugging output
if [[ -f ListExamples.java ]]
then
	echo "ListExamples.java exists"
fi 

sed '43 s/index1/index2/' "ListExamples.java" > ListExamples2.java && mv ListExamples2.java ListExamples.java


javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java

java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests

git add .
git commit -m "Fixed Files"

git push


