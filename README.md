
# Table of Contents

1.  [context](#org2df5ab2)
2.  [build](#orgd2be5b6)
3.  [generate](#org90e7593)
4.  [referene](#org4ae4afa)



<a id="org2df5ab2"></a>

# context

![img](project-depency.svg "模块依赖关系")  


<a id="orgd2be5b6"></a>

# build

    sh ./land.template/build-archetype.sh


<a id="org90e7593"></a>

# generate

    mvn archetype:generate -DarchetypeGroupId=com.land.archetype \
    -DarchetypeArtifactId=pom-archetype -DarchetypeVersion=0.0.1-SNAPSHOT \
    -DinteractiveMode=false -DgroupId=com.land.center -DartifactId=land.crm \
    -Dversion=0.1.0-SNAPSHOT -Dpackage=com.land.crm \


<a id="org4ae4afa"></a>

# referene

<https://www.baeldung.com/maven-relativepath>  

