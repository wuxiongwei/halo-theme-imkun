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
        <#include "module/archive-timeline.ftl">
    </aside>
    <div id="k-content">
        <div id="article-post">
            <#list posts.content as post>
                <@post_card post></@post_card>
            </#list>
        </div>
        <div id="index-page">
            <#include "module/index-page.ftl">
        </div>
    </div>
    <aside>
        <ul class="im-tags">
            <@tagTag method="list">
                <#list tags as tag>
                    <li class="im-shadow">
                        <a href="${context!}/tags/${tag.slugName}">
                            <div>
                                <#if tag.name == "markdown">
                                    <div class="im-icon" ><i class="fab fa-markdown"></i></div>
                                <#elseif tag.name == "code">
                                    <div class="im-icon" ><i class="fab fa-codiepie"></i></i></div>
                                <#elseif tag.name == "html">
                                    <div class="im-icon" ><i class="fab fa-html5"></i></div>
                                <#elseif tag.name == "css">
                                    <div class="im-icon" ><i class="fab fa-css3-alt"></i></div>
                                <#elseif tag.name == "js" >
                                    <div class="im-icon" ><i class="fab fa-node-js"></i></div>
                                <#else >
                                    <div class="im-icon" ><i class="fab fa-dev"></i></div>
                                </#if>
                            </div>
                            <div class="im-label">
                                ${tag.name}(${tag.postCount!0})
                            </div>
                        </a>
                    </li>
                </#list>
            </@tagTag>
        </ul>
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
</div>
<#include "module/footer.ftl" />
