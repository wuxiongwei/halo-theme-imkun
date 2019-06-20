<#include "default.ftl" />
<link rel="stylesheet" href="${static!}/source/css/pagination.css" /
<#include "module/widget/post-card.ftl">
<#include "module/widget/articles-card.ftl" />
<#include "module/widget/article-card.ftl" />
<@default title="${options.blog_title!}" keyword="${options.seo_keywords!}" desc="${options.seo_desc!}" canonical="${options.blog_url}" body_class="home-template" />
<#include "module/menu.ftl" />
<div id="k-container">
    <aside>
        <#include "module/widget/aside-left.ftl">
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
                                        <#if post.thumbnail??>
                                        <img src="${post.thumbnail}"" alt="${post.title}">
                                        </#if>
                                    </div>
                                    <div class="im-timeline-content">
                                        <div class="im-timeline-content-info">
                                            <div>
                                                <a href="${context!}/archives/${post.url!}" class="im-timeline-li-link weight-title">${post.title} </a>
                                            </div>
                                            <p class="weight-extra-font-size">${post.editTime?string["EEE MMM d"]}</p>
                                        </div>
<#--                                        <div class="im-timeline-content-tags">-->
<#--                                            ${post}-->
<#--                                            <#list post.tags as tag>-->
<#--                                                <a href="/tags/${tag.id}">${tag.String}</a>-->
<#--                                            </#list>-->
<#--                                        </div>-->


                                    </div>

                                </li>
                            </#list>
                        </ul>
                    </div>
                </div>
            </#list>
        </@postTag>
    </div>
    <aside>
        <#include "module/widget/aside-right.ftl">
    </aside>
</div>
<#include "module/footer.ftl" />
