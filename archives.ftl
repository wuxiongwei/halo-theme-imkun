<#include "default.ftl" />
<link rel="stylesheet" href="${static!}/source/css/pagination.css" /
<#include "module/widget/post-card.ftl">
<#include "module/widget/articles-card.ftl" />
<#include "module/widget/article-card.ftl" />
<@default title="${options.blog_title!}" keyword="${options.seo_keywords!}" desc="${options.seo_desc!}" canonical="${options.blog_url}" body_class="home-template" />
<#include "module/menu.ftl" />
<div id="k-container">
    <aside>

    </aside>
    <div id="k-content">
        <@postTag method="archiveMonth">
            <#list archives as archive>

                <div class="k-content-timeline">
                    <div class="im-timeline">
                        <div class="im-timeline-extra">
                            <div class="im-timeline-extra-date">${archive.year?c}年${archive.month}月</div>
                            <div class="im-timeline-extra-total extra-1-font-size gray">${archive.posts?size} 篇文章</div>
                        </div>
                        <ul>
                            <#list archive.posts?sort_by("createTime")?reverse as post>
                                <li class="im-timeline-li">
                                    <div class="im-timeline-li-cover">
<#--                                        <#if post.thumbnail>-->
<#--                                        <img src="${post.thumbnail}" alt="${post.title}">-->
<#--                                        </#if>-->
                                    </div>
                                    <a href="${context!}/archives/${post.url!}" class="im-timeline-li-link weight-title">${post.title} </a>
                                </li>
                            </#list>
                        </ul>
                    </div>
                </div>
            </#list>
        </@postTag>
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
