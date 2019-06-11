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
        <div class="im-profile">
            <div class="im-photo">
                <img src="http://localhost:8090/upload/2019/6/anthony-delanoix-222456-unsplash-a736a9f5c4724cc3b6eea75e53811bb4.jpg"
                     alt="">
                <div class="im-blogger">Quinn</div>
            </div>
            <div class="im-quotes">Action speak load than words.</div>
            <div class="im-blog-article-info">
                <div class="article-info">
                    <div>
                       <div class="post-count-title">POSTS</div>
                        <div class="post-count-num profile-num">100</div>
                    </div>
                    <div>
                        <div class="post-cate-title">CATEGORIES</div>
                        <div class="post-cate profile-num">100</div>
                    </div>
                    <div>
                        <div class="post-tags-title">TAGS</div>
                        <div class="post-count profile-num">100</div>
                    </div>
                </div>
            </div>
            <div class="my-info">
                <div>
                    <a href="#"><i class="fas fa-envelope"></a></i>
                </div>
                <div>
                    <a href="#"><i class="fab fa-github"></i></a>
                </div>
                <div>
                    <a href="#"><i class="fab fa-github"></i></a>
                </div>
                <div>
                    <a href="#"><i class="fab fa-github"></i></a>
                </div>
            </div>
        </div>
        <div class="im-weight-block-cate im-shadow animated fadeInLeft">
            <h1>分类</h1>
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
        <div class="im-weight-block-tags">
            <h1>标签</h1>
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
        <div class="im-m-tags" >
            <div>
                <@tagTag method="list">
                    <#list tags as tag>
                        <div class="<@fun.randBgColor />">
                            <a href="${context!}/tags/${tag.slugName}">${tag.name}</a>
                        </div>
                    </#list>
                </@tagTag>
            </div>
        </div>
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
                                <#elseif tag.name == "linux" >
                                    <div class="im-icon" ><i class="fab fa-linux"></i></div>
                                <#elseif tag.name == "ubuntu" >
                                    <div class="im-icon" ><i class="fab fa-ubuntu"></i></div>
                                <#elseif tag.name == "suse" >
                                    <div class="im-icon" ><i class="fab fa-suse"></i></div>
                                <#elseif tag.name == "fedora" >
                                    <div class="im-icon" ><i class="fab fa-fedora"></i>/div>
                                <#elseif tag.name == "centos" >
                                    <div class="im-icon" ><i class="fab fa-centos"></i></div>
                                <#elseif tag.name == "java" >
                                    <div class="im-icon" ><i class="fab fa-java"></i></div>
                                <#else >
                                        <div class="im-icon" ><i class="fab <@fun.randBgIco />"></i></div>
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
        <@postTag method="latest" top="4">
            <#list posts as post>
                <@article_card post></@article_card>
            </#list>
        </@postTag>
    </aside>
</div>
<#include "module/footer.ftl" />
