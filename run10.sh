#!/bin/bash
for i in {1..10}
do 
	echo "$i" 
	mvn clean install --quiet 
	grep --with-filename be.fgov.A target/surefire-reports/TEST-be.fgov.B.xml 
	grep --with-filename be.fgov.B target/surefire-reports/TEST-be.fgov.A.xml
done
