
# Table of Contents

1.  [Introduction](#orga8568cc)
2.  [Context](#orgd3c9416)
3.  [Build](#org681c0cb)
4.  [Generate](#orga7f3611)
5.  [Run](#org5c4f4e4)
6.  [Git submodule](#org160e759)
7.  [Referene](#org17e7095)
8.  [Todo](#orge7b328c)



<a id="orga8568cc"></a>

# Introduction

Land Microservices Archetype , A standard Java framework for quick projects for teams and companies.  


<a id="orgd3c9416"></a>

# Context

![img](project-depency.svg)  


<a id="org681c0cb"></a>

# Build

clone project and pull all submodules  

    git clone --recurse-submodules git@github.com:vanniuner/land-parent.git

    sh build-archetype.sh

<div class="notice-info" id="orgae7a91e">
<p>
This will create a archetype from <b>land-archetype</b> , and install it via maven.<br />
</p>

</div>


<a id="orga7f3611"></a>

# Generate

    mvn archetype:generate -DarchetypeGroupId=com.land.archetype \
    -DarchetypeArtifactId=pom-archetype -DarchetypeVersion=0.0.1-SNAPSHOT \
    -DinteractiveMode=false -DgroupId=com.land.center -DartifactId=land.crm \
    -Dversion=0.1.0-SNAPSHOT -Dpackage=com.land.crm \

> The project which genterated by this archetype is a submodule of land-parent.  
> You need add **<module>** at **modules** node into land-parent/pom.xml.  
> `artifactId` effect the genterated project director name.  


<a id="org5c4f4e4"></a>

# Run

<div class="notice-example" id="orgaaa7941">
<p>
Archetype contains an <b>run.sh</b> for service startup.<br />
</p>

</div>

    sh ./land-archetype/run.sh


<a id="org160e759"></a>

# Git submodule

    # add a submodule when under the parent project directory
    git submodule add git@github.com:vanniuner/land-archetype.git
    # clone project and pull all submodules
    git clone --recurse-submodules git@github.com:vanniuner/land-parent.git
    # update all submodules
    git submodule update --remote


<a id="org17e7095"></a>

# Referene

<https://www.baeldung.com/maven-relativepath>  
<https://juejin.cn/post/6844903976257716232>  


<a id="orge7b328c"></a>

# Todo

Make a component project struct  

