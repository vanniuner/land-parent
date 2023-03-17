
# Table of Contents

1.  [context](#org98c8912)
2.  [build](#org1eab2b1)
3.  [generate](#orged8f65b)
4.  [referene](#orgc97e129)



<a id="org98c8912"></a>

# context

![img](project-depency.svg "模块依赖关系")  


<a id="org1eab2b1"></a>

# build

    sh ./land.template/build-archetype.sh


<a id="orged8f65b"></a>

# generate

    mvn archetype:generate -DarchetypeGroupId=com.land.archetype \
    -DarchetypeArtifactId=pom-archetype -DarchetypeVersion=0.0.1-SNAPSHOT \
    -DinteractiveMode=false -DgroupId=com.land.center -DartifactId=land.crm \
    -Dversion=0.1.0-SNAPSHOT -Dpackage=com.land.crm \


<a id="orgc97e129"></a>

# referene

<https://www.baeldung.com/maven-relativepath>  

