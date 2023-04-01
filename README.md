
# Table of Contents

1.  [Introduction](#orgff136e6)
2.  [Context](#org59dba5e)
3.  [Build](#orge2fc892)
4.  [Generate](#orgb8e2ab7)
5.  [Run](#org1a05979)
6.  [Git submodule](#org2000a93)
7.  [Referene](#org69d20ae)
8.  [Todo](#orgcde3f7f)



<a id="orgff136e6"></a>

# Introduction

Land Microservices Archetype , A standard Java framework for quick projects for teams and companies.  


<a id="org59dba5e"></a>

# Context

![img](project-depency.svg)  


<a id="orge2fc892"></a>

# Build

clone project and pull all submodules  

    git clone --recurse-submodules git@github.com:vanniuner/land-parent.git

    sh build-archetype.sh

<div class="notice-info" id="orgac0c4ec">
<p>
This will create a archetype from <b>land-archetype</b> , and install it via maven.<br />
</p>

</div>


<a id="orgb8e2ab7"></a>

# Generate

    mvn archetype:generate -DarchetypeGroupId=com.land.archetype \
    -DarchetypeArtifactId=pom-archetype -DarchetypeVersion=0.0.1-SNAPSHOT \
    -DinteractiveMode=false -DgroupId=com.land.center -DartifactId=land.crm \
    -Dversion=0.1.0-SNAPSHOT -Dpackage=com.land.crm \

> The project which genterated by this archetype is a submodule of land-parent.  
> You need add **<module>** at **modules** node into land-parent/pom.xml.  
> `artifactId` effect the genterated project director name.  


<a id="org1a05979"></a>

# Run

<div class="notice-example" id="org2c51c44">
<p>
Archetype contains an <b>run.sh</b> for service startup.<br />
</p>

</div>

    sh ./land-archetype/run.sh


<a id="org2000a93"></a>

# Git submodule

    # add a submodule when under the parent project directory
    git submodule add git@github.com:vanniuner/land-archetype.git
    # clone project and pull all submodules
    git clone --recurse-submodules git@github.com:vanniuner/land-parent.git
    # update all submodules
    git submodule update --remote


<a id="org69d20ae"></a>

# Referene

<https://www.baeldung.com/maven-relativepath>  
<https://juejin.cn/post/6844903976257716232>  


<a id="orgcde3f7f"></a>

# Todo

Make a component project struct  

