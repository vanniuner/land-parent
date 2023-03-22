
# Table of Contents

1.  [Introduction](#orgeb17743)
2.  [context](#orgaf94686)
3.  [build](#orgc2f2173)
4.  [generate](#org5415e06)
5.  [git submodule](#org9bd20b3)
6.  [referene](#orge58f2bf)



<a id="orgeb17743"></a>

# Introduction

Land Microservices Archetype , A standard Java framework for quick projects for teams and companies.  


<a id="orgaf94686"></a>

# context

![img](project-depency.svg "模块依赖关系")  


<a id="orgc2f2173"></a>

# build

clone project and pull all submodules  

    git clone --recurse-submodules git@github.com:vanniuner/land-parent.git

    sh build-archetype.sh

> This will create a archetype from **land-archetype** , and install it via maven.  


<a id="org5415e06"></a>

# generate

    mvn archetype:generate -DarchetypeGroupId=com.land.archetype \
    -DarchetypeArtifactId=pom-archetype -DarchetypeVersion=0.0.1-SNAPSHOT \
    -DinteractiveMode=false -DgroupId=com.land.center -DartifactId=land.crm \
    -Dversion=0.1.0-SNAPSHOT -Dpackage=com.land.crm \

> The project which genterated by this archetype is a submodule of land-parent.  
> You need add **<module>** at **modules** node into land-parent/pom.xml.  
> `artifactId` effect the genterated project director name.  


<a id="org9bd20b3"></a>

# git submodule

    # add a submodule when under the parent project directory
    git submodule add git@github.com:vanniuner/land-archetype.git
    # clone project and pull all submodules
    git clone --recurse-submodules git@github.com:vanniuner/land-parent.git
    # update all submodules
    git submodule update --remote


<a id="orge58f2bf"></a>

# referene

<https://www.baeldung.com/maven-relativepath>  

