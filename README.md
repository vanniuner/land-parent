
# Table of Contents

1.  [Introduction](#org2680a39)
2.  [Context](#org553b6cd)
3.  [Build](#orgcb5f7b4)
4.  [Generate](#org036ea82)
5.  [Run](#orgf0a245d)
6.  [Git submodule](#orgba18e98)
7.  [Referene](#org95080b5)
8.  [Todo](#org43b417a)



<a id="org2680a39"></a>

# Introduction

Land Microservices Archetype , A standard Java framework for quick projects for teams and companies.  


<a id="org553b6cd"></a>

# Context

![img](project-depency.svg)  


<a id="orgcb5f7b4"></a>

# Build

clone project and pull all submodules  

    git clone --recurse-submodules git@github.com:vanniuner/land-parent.git

    sh build-archetype.sh

<div class="notice-info" id="org156487f">
<p>
This will create a archetype from <b>land-archetype</b> , and install it via maven.<br />
</p>

</div>


<a id="org036ea82"></a>

# Generate

    mvn archetype:generate -DarchetypeGroupId=com.land.archetype \
    -DarchetypeArtifactId=pom-archetype -DarchetypeVersion=0.0.1-SNAPSHOT \
    -DinteractiveMode=false -DgroupId=com.land.center -DartifactId=land.crm \
    -Dversion=0.1.0-SNAPSHOT -Dpackage=com.land.crm \

> The project which genterated by this archetype is a submodule of land-parent.  
> You need add **<module>** at **modules** node into land-parent/pom.xml.  
> `artifactId` effect the genterated project director name.  


<a id="orgf0a245d"></a>

# Run

<div class="notice-example" id="org21e8234">
<p>
Archetype contains an <b>run.sh</b> for service startup.<br />
</p>

</div>

    sh ./land-archetype/run.sh


<a id="orgba18e98"></a>

# Git submodule

    # add a submodule when under the parent project directory
    git submodule add git@github.com:vanniuner/land-archetype.git
    # clone project and pull all submodules
    git clone --recurse-submodules git@github.com:vanniuner/land-parent.git
    # update all submodules
    git submodule update --remote


<a id="org95080b5"></a>

# Referene

<https://www.baeldung.com/maven-relativepath>  
<https://juejin.cn/post/6844903976257716232>  


<a id="org43b417a"></a>

# Todo

Make a component project struct  

