#!/bin/bash
mvn clean install
echo "====land-parent build successfully"
mvn clean archetype:create-from-project -f ./land-archetype/pom.xml
echo "====land.archetype build successfully"
mvn clean install -f ./land-archetype/target/generated-sources/archetype/pom.xml
echo "====land.archetype install successfully"
