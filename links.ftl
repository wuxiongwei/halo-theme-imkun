<#include "default.ftl" />
<link rel="stylesheet" href="${static!}/source/css/common.css" />
<link rel="stylesheet" href="${static!}/source/css/weight.css" />
<link rel="stylesheet" href="${static!}/source/css/menu.css" />
<link rel="stylesheet" href="${static!}/source/css/article.css" />
<link rel="stylesheet" href="${static!}/source/css/pagination.css" /
<link rel="stylesheet" href="${static!}/source/css/pagination.css" /
<#include "module/widget/post-card.ftl">
<#include "module/widget/articles-card.ftl" />
<#include "module/widget/article-card.ftl" />
<#include "module/menu.ftl" />
<div id="k-container">
    <aside>

    </aside>
    <div id="k-content">
        <@linkTag method="listTeams">
            <#list teams as item>
        <div class="k-content-timeline">
            <div class="im-timeline">
                <div class="im-timeline-extra">
                    <div class="im-timeline-extra-date">${item.team}</div>
                    <div class="im-timeline-extra-total extra-1-font-size gray">${item.links?size}</div>
                </div>
                <ul>
                    <#list item.links as link>
                    <li class="im-timeline-li">
                        <div class="im-timeline-li-cover"><img
                                    src="${link.url!}"
                                    alt="${link.name!}">
                        </div>
                        <a href="#" class="im-timeline-li-link weight-title">${link.name!} </a>
                    </li>
                    </#list>
                </ul>
            </div>
        </div>
        </#list>
        </@linkTag>
    </div>
    <aside>


    </aside>
</div>
<#include "module/footer.ftl" />
