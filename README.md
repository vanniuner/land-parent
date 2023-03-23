
# Table of Contents

1.  [Introduction](#org35dca19)
2.  [Context](#org52329c7)
3.  [Build](#org49022ad)
4.  [Generate](#org8c96f9f)
5.  [Run](#orgdcb097e)
6.  [Git submodule](#orgbb796e7)
7.  [Referene](#orgcae5c08)
8.  [Todo](#org6c050ef)



<a id="org35dca19"></a>

# Introduction

Land Microservices Archetype , A standard Java framework for quick projects for teams and companies.  


<a id="org52329c7"></a>

# Context

![img](project-depency.svg)  


<a id="org49022ad"></a>

# Build

clone project and pull all submodules  

    git clone --recurse-submodules git@github.com:vanniuner/land-parent.git

    sh build-archetype.sh

<div class="notice-info" id="org28047a0">
<p>
This will create a archetype from <b>land-archetype</b> , and install it via maven.<br />
</p>

</div>


<a id="org8c96f9f"></a>

# Generate

    mvn archetype:generate -DarchetypeGroupId=com.land.archetype \
    -DarchetypeArtifactId=pom-archetype -DarchetypeVersion=0.0.1-SNAPSHOT \
    -DinteractiveMode=false -DgroupId=com.land.center -DartifactId=land.crm \
    -Dversion=0.1.0-SNAPSHOT -Dpackage=com.land.crm \

> The project which genterated by this archetype is a submodule of land-parent.  
> You need add **<module>** at **modules** node into land-parent/pom.xml.  
> `artifactId` effect the genterated project director name.  


<a id="orgdcb097e"></a>

# Run

<div class="notice-example" id="org0b46b90">
<p>
Archetype contains an <b>run.sh</b> for service startup.<br />
</p>

</div>

    sh ./land-archetype/run.sh


<a id="orgbb796e7"></a>

# Git submodule

    # add a submodule when under the parent project directory
    git submodule add git@github.com:vanniuner/land-archetype.git
    # clone project and pull all submodules
    git clone --recurse-submodules git@github.com:vanniuner/land-parent.git
    # update all submodules
    git submodule update --remote


<a id="orgcae5c08"></a>

# Referene

<https://www.baeldung.com/maven-relativepath>  
<https://juejin.cn/post/6844903976257716232>  


<a id="org6c050ef"></a>

# Todo

Make a component project struct  

