
# Table of Contents

1.  [Introduction](#org6f37ea5)
2.  [Context](#org9f57a66)
3.  [Build](#orgfc8cec2)
4.  [Generate](#orgbdd1e9b)
5.  [Run](#orgdba7ad8)
6.  [Git submodule](#orga6e0cce)
7.  [Referene](#org68df7be)
8.  [Todo](#org78a4c68)



<a id="org6f37ea5"></a>

# Introduction

Land Microservices Archetype , A standard Java framework for quick projects for teams and companies.  


<a id="org9f57a66"></a>

# Context

![img](project-depency.svg)  


<a id="orgfc8cec2"></a>

# Build

clone project and pull all submodules  

    git clone --recurse-submodules git@github.com:vanniuner/land-parent.git

    sh build-archetype.sh

<div class="notice-info" id="org80b9b2e">
<p>
This will create a archetype from <b>land-archetype</b> , and install it via maven.<br />
</p>

</div>


<a id="orgbdd1e9b"></a>

# Generate

    mvn archetype:generate -DarchetypeGroupId=com.land.archetype \
    -DarchetypeArtifactId=pom-archetype -DarchetypeVersion=0.0.1-SNAPSHOT \
    -DinteractiveMode=false -DgroupId=com.land.center -DartifactId=land.crm \
    -Dversion=0.1.0-SNAPSHOT -Dpackage=com.land.crm \

> The project which genterated by this archetype is a submodule of land-parent.  
> You need add **<module>** at **modules** node into land-parent/pom.xml.  
> `artifactId` effect the genterated project director name.  


<a id="orgdba7ad8"></a>

# Run

<div class="notice-example" id="org01496f3">
<p>
Archetype contains an <b>run.sh</b> for service startup.<br />
</p>

</div>

    sh ./land-archetype/run.sh


<a id="orga6e0cce"></a>

# Git submodule

    # add a submodule when under the parent project directory
    git submodule add git@github.com:vanniuner/land-archetype.git
    # clone project and pull all submodules
    git clone --recurse-submodules git@github.com:vanniuner/land-parent.git
    # update all submodules
    git submodule update --remote


<a id="org68df7be"></a>

# Referene

<https://www.baeldung.com/maven-relativepath>  
<https://juejin.cn/post/6844903976257716232>  


<a id="org78a4c68"></a>

# Todo

Make a component project struct  

