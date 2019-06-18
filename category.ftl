<#include "default.ftl" />
<link rel="stylesheet" href="${static!}/source/css/article-timeline.css">
<link rel="stylesheet" href="${static!}/source/css/pagination.css" /
<#include "module/widget/post-card.ftl">
<#include "module/widget/articles-card.ftl" />
<#include "module/widget/article-card.ftl" />
<@default title="${options.blog_title!}" keyword="${options.seo_keywords!}" desc="${options.seo_desc!}" canonical="${options.blog_url}" body_class="home-template" />
<#include "module/menu.ftl" />
<div id="k-container">
    <aside>
        <#include "module/archive-timeline.ftl">
    </aside>
    <div id="k-content">
        <div id="article-post">
            <#list posts.content as post>
                <@post_card post></@post_card>
            </#list>
        </div>
        <div id="index-page">
            <#include "module/paging/category-page.ftl">
        </div>
    </div>
    <aside>
        <@postTag method="latest" top="4">
            <#list posts as post>
                <@article_card post></@article_card>
            </#list>
        </@postTag>
    </aside>
</div>
<#include "module/footer.ftl" />
