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
        <div class="im-profile im-shadow animated slideInLeft">
            <div class="im-info">
                <div class="im-photo">
                    <img src="${options.blog_logo!}"
                         alt="${options.blog_title!}">
                </div>
                <div class="im-signature">
                    <div class="im-name">${user.nickname}</div>
                    <div class="signature gray">${user.description}</div>
                </div>
            </div>
            <div class="im-skills">
                <div><i class="fab fa-java"></i></div>
                <div><i class="fab fa-centos"></i></div>
                <div><i class="fab fa-python"></i></div>
                <div><i class="fas fa-seedling"></i></div>
            </div>
        </div>
        <div class="im-weight-block-1 im-shadow animated fadeInLeft">
            <header class="im-head">
                <h3 class="im-title">最多浏览</h3>
            </header>
            <#list posts.content as post>
                <#if post_index lt 4 >
                    <@articles_card post></@articles_card>
                </#if>
            </#list>
        </div>
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
    </aside>
</div>
<#include "module/footer.ftl" />
