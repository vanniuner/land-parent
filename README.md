
# Table of Contents

1.  [context](#orgd20acfc)
2.  [build](#org5a4ef32)
3.  [generate](#org8da1fbd)
4.  [referene](#orgadfef17)



<a id="orgd20acfc"></a>

# context

![img](project-depency.svg "模块依赖关系")  


<a id="org5a4ef32"></a>

# build

    sh ./land.template/build-archetype.sh


<a id="org8da1fbd"></a>

# generate

    mvn archetype:generate -DarchetypeGroupId=com.land.archetype \
    -DarchetypeArtifactId=pom-archetype -DarchetypeVersion=0.0.1-SNAPSHOT \
    -DinteractiveMode=false -DgroupId=com.land.center -DartifactId=land.crm \
    -Dversion=0.1.0-SNAPSHOT -Dpackage=com.land.crm \


<a id="orgadfef17"></a>

# referene

<https://www.baeldung.com/maven-relativepath>  

