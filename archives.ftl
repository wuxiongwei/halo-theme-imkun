<#include "default.ftl" />
<link rel="stylesheet" href="${static!}/source/css/pagination.css" /
<#include "module/widget/post-card.ftl">
<#include "module/widget/articles-card.ftl" />
<#include "module/widget/article-card.ftl" />
<@default title="${options.blog_title!}" keyword="${options.seo_keywords!}" desc="${options.seo_desc!}" canonical="${options.blog_url}" body_class="home-template" />
<#include "module/menu.ftl" />
<div id="k-container">
    <aside>
        <div class="im-profile im-shadow">
            <div class="im-info">
                <div class="im-photo">
                    <img src="http://localhost:8090/upload/2019/6/anthony-delanoix-222456-unsplash-a736a9f5c4724cc3b6eea75e53811bb4.jpg"
                         alt="">
                </div>
                <div class="im-signature">
                    <div class="im-name">Quinn</div>
                    <div class="signature gray">Actions speak load than words</div>
                </div>
            </div>
            <div class="im-skills">
                <div><i class="fab fa-java"></i></div>
                <div><i class="fab fa-centos"></i></div>
                <div><i class="fab fa-python"></i></div>
                <div><i class="fas fa-seedling"></i></div>
            </div>
        </div>
        <div class="im-classify  im-shadow">
            <div class="im-classify-title">
                <div>专题</div>
            </div>
            <div class="im-category">
                <ul>
                    <@categoryTag method="list">
                        <#list categories as category>
                            <li>
                                <a href="${context!}/categories/${category.slugName}">${category.name}(${category.postCount!0})</a>
                            </li>
                        </#list>
                    </@categoryTag>
                </ul>
            </div>
            <div class="im-tags"></div>

        </div>

        <div class="im-classify  im-shadow">
            <div class="im-classify-title">
                <div>标签</div>
            </div>
            <div class="im-category">
                <ul>
                    <@tagTag method="list">
                        <#list tags as tag>
                            <li>
                                <a href="${context!}/tags/${tag.slugName}">${tag.name}(${tag.postCount!0})</a>
                            </li>
                        </#list>
                    </@tagTag>
                </ul>
            </div>
            <div class="im-tags"></div>

        </div>
        <div class="im-classify  im-shadow">
            <div class="im-classify-title">
                <div>Links</div>
            </div>
            <div class="im-category">
                <ul>
                    <@linkTag method="list">
                        <#if links?? && links?size gt 0>
                            <#list links as link>
                                <li>🔒 <a href="${link.url}" target="_blank">${link.name}</a></li>
                            </#list>
                        </#if>
                    </@linkTag>
                </ul>
            </div>
            <div class="im-tags"></div>

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
