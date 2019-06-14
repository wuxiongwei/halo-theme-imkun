<#import "module/functions.ftl" as fun>
<#include "default.ftl" />
<link rel="stylesheet" href="${static!}/source/css/pagination.css"></link>
<#include "module/widget/post-card.ftl">
<#include "module/widget/articles-card.ftl" />
<#include "module/widget/article-card.ftl" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
<#--        <div class="im-m-tags" >-->
<#--            <div>-->
<#--                <@tagTag method="list">-->
<#--                    <#list tags as tag>-->
<#--                        <div class="<@fun.randBgColor />">-->
<#--                            <a href="${context!}/tags/${tag.slugName}">${tag.name}</a>-->
<#--                        </div>-->
<#--                    </#list>-->
<#--                </@tagTag>-->
<#--            </div>-->
<#--        </div>-->
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

<#--        <ul class="im-tags">-->
<#--            <@tagTag method="list">-->
<#--                <#list tags as tag>-->
<#--                    <li class="im-shadow">-->
<#--                        <a href="${context!}/tags/${tag.slugName}">-->
<#--                            <div>-->
<#--                                <#if tag.name == "markdown">-->
<#--                                    <div class="im-icon" ><i class="fab fa-markdown"></i></div>-->
<#--                                <#elseif tag.name == "code">-->
<#--                                    <div class="im-icon" ><i class="fab fa-codiepie"></i></i></div>-->
<#--                                <#elseif tag.name == "html">-->
<#--                                    <div class="im-icon" ><i class="fab fa-html5"></i></div>-->
<#--                                <#elseif tag.name == "css">-->
<#--                                    <div class="im-icon" ><i class="fab fa-css3-alt"></i></div>-->
<#--                                <#elseif tag.name == "js" >-->
<#--                                    <div class="im-icon" ><i class="fab fa-node-js"></i></div>-->
<#--                                <#elseif tag.name == "linux" >-->
<#--                                    <div class="im-icon" ><i class="fab fa-linux"></i></div>-->
<#--                                <#elseif tag.name == "ubuntu" >-->
<#--                                    <div class="im-icon" ><i class="fab fa-ubuntu"></i></div>-->
<#--                                <#elseif tag.name == "suse" >-->
<#--                                    <div class="im-icon" ><i class="fab fa-suse"></i></div>-->
<#--                                <#elseif tag.name == "fedora" >-->
<#--                                    <div class="im-icon" ><i class="fab fa-fedora"></i>/div>-->
<#--                                <#elseif tag.name == "centos" >-->
<#--                                    <div class="im-icon" ><i class="fab fa-centos"></i></div>-->
<#--                                <#elseif tag.name == "java" >-->
<#--                                    <div class="im-icon" ><i class="fab fa-java"></i></div>-->
<#--                                <#else >-->
<#--                                        <div class="im-icon" ><i class="fab <@fun.randBgIco />"></i></div>-->
<#--                                </#if>-->
<#--                            </div>-->
<#--                            <div class="im-label">-->
<#--                                ${tag.name}(${tag.postCount!0})-->
<#--                            </div>-->
<#--                        </a>-->
<#--                    </li>-->
<#--                </#list>-->
<#--            </@tagTag>-->
<#--        </ul>-->
        <@postTag method="latest" top="4">
            <#list posts as post>
                <@article_card post></@article_card>
            </#list>
        </@postTag>
    </aside>
</div>
<#include "module/footer.ftl" />
