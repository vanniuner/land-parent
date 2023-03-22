
# Table of Contents

1.  [Introduction](#org8e31d01)
2.  [context](#orgb976fa3)
3.  [build](#orga4882ec)
4.  [generate](#orgac9ebb2)
5.  [git submodule](#orga4ccc46)
6.  [referene](#orgff7e405)



<a id="org8e31d01"></a>

# Introduction

Land Microservices Archetype , A standard Java framework for quick projects for teams and companies.  


<a id="orgb976fa3"></a>

# context

![img](project-depency.svg "模块依赖关系")  


<a id="orga4882ec"></a>

# build

    sh ./land.template/build-archetype.sh


<a id="orgac9ebb2"></a>

# generate

    mvn archetype:generate -DarchetypeGroupId=com.land.archetype \
    -DarchetypeArtifactId=pom-archetype -DarchetypeVersion=0.0.1-SNAPSHOT \
    -DinteractiveMode=false -DgroupId=com.land.center -DartifactId=land.crm \
    -Dversion=0.1.0-SNAPSHOT -Dpackage=com.land.crm \

> The project which genterated by this archetype is a submodule of land-parent.  
> You need add **<module>** at **modules** node into land-parent/pom.xml.  
> `artifactId` effect the genterated project director name.  


<a id="orga4ccc46"></a>

# git submodule

    # add a submodule when under the parent project directory
    git submodule add git@github.com:vanniuner/land-archetype.git
    # clone project and pull all submodules
    git clone --recurse-submodules git@github.com:vanniuner/land-parent.git
    # update all submodules
    git submodule update --remote


<a id="orgff7e405"></a>

# referene

<https://www.baeldung.com/maven-relativepath>  

