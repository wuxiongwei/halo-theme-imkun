<#include "./default.ftl" />
<link rel="stylesheet" href="${static!}/source/css/common.css" />
<link rel="stylesheet" href="${static!}/source/css/weight.css" />
<link rel="stylesheet" href="${static!}/source/css/menu.css" />
<link rel="stylesheet" href="${static!}/source/css/article.css" />
<link rel="stylesheet" href="${static!}/source/css/pagination.css" /
<#include "./module/widget/post-card.ftl">
<#include "./module/widget/articles-card.ftl" />
<#include "./module/widget/article-card.ftl" />
<link rel="stylesheet" href="${static!}/source/css/article-timeline.css">
<#include "module/menu.ftl" />
<div>
<#--    <#include "module/widget/search.ftl" />-->
</div>
<div id="k-container">
    <aside>
        <#include "module/widget/aside-left.ftl">
    </aside>
    <div id="k-content">
        <div id="article-post">
            <#list posts.content as post>
                <@post_card post></@post_card>
            </#list>
        </div>
        <div id="index-page">
            <#include "module/paging/index-page.ftl">
        </div>
    </div>
    <aside>
        <#include "module/widget/aside-right.ftl">
    </aside>
</div>
<#include "module/footer.ftl" />
