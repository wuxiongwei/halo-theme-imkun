<@tagTag method="list">
    <#assign randFactor=randomMethod(0,tags?size)/>
    <@postTag method="listByTagId" tagId="${randFactor}">
        <#if posts?size == 0>
            <@postTag method="latest" top="5">
                <#list posts as post>
                    <@article_card post></@article_card>
                </#list>
            </@postTag>
        <#else >
            <#list posts as post>
                <@article_card post></@article_card>
            </#list>
        </#if>
    </@postTag>
</@tagTag>