ssh cs15lwi23ash@ieng6.ucsd.edu "rm -rf lab7; git clone git@github.com:SamvritSrinath/lab7.git; cd lab7 ;  javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java; java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests 2>&1; sed '43 s/index1/index2/' "ListExamples.java" > ListExamples2.java && mv ListExamples2.java ListExamples.java; javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java; java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests; git add --all ; git commit -m 'Fixed Files'; git push origin main"


# git clone git@github.com:SamvritSrinath/lab7.git;

# cd lab7;

# javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java;

# java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests 2>&1;

# sed '43 s/index1/index2/' "ListExamples.java" > ListExamples2.java && mv ListExamples2.java ListExamples.java;


# javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java;

# java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests;

# git add . ;
# git commit -m "Fixed Files";

# # git push 