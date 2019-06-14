<#include "default.ftl" />
<#include "module/widget/articles-card.ftl" />
<#include "module/widget/article-card.ftl" />
<@default title="${options.blog_title!}" keyword="${options.seo_keywords!}" desc="${options.seo_desc!}" canonical="${options.blog_url}" body_class="home-template" />
<#include "module/menu.ftl" />
<div id="k-container">
    <div id="k-content">
        <div class="article-content">
            <header class="post-full-header">
                <h1 class="post-full-title">${post.title}</h1>
                <section class="post-full-meta" style="display: flex;width: 200px;" >
                    <div class="im-tags" style="flex: 1"><a class="tags" href="#">
                            <time class="post-full-meta-date" datetime="${post.createTime?string('yyyy-MM-dd')}">${post.createTime?string('d MMM,yyyy')}</time>
                        </a></div>
                    <#if post.categories?? && post.categories?size gt 0>
                        <div class="im-tags" style="flex: 6;"><a class="tags ${randomColor()}" href="/categories/${post.categories[0].slugName}">${post.categories[0].name}</a></div>
                    </#if>
                </section>
            </header>
            <hr>
            <#if post.thumbnail??>
                <figure class="post-full-image" style="background-image: url(${post.thumbnail})">
                </figure>
            </#if>

            <section class="post-full-content">
                <div class="post-content" id="post-content">
                    ${post.formatContent!}
                    <#include "module/post-copyright.ftl">
                </div>
                <#--<#include "partials/byline-single.ftl">-->
            </section>
        </div>


        <#-- Email subscribe form at the bottom of the page -->
        <#--<footer class="post-full-footer">-->
        <#--</footer>-->

        <section class="post-full-comments">
            <#-- If you want to embed comments, this is a good place to do it! -->
            <#include "module/comment.ftl">
            <@comment post=post type="post" />
        </section>
        <section>
            <div class="read-next-feed">
                <#if afterPost??>
                    <@post_card afterPost></@post_card>
                <#else>
                </#if>

                <#if beforePost??>
                    <@post_card beforePost></@post_card>
                </#if>

            </div>
    </div>
    <aside>
        <@postTag method="latest" top="1">
            <#list posts as post>
                <@article_card post></@article_card>
            </#list>
        </@postTag>
        <div>
            <div id="directory" class="animated fadeInRight"></div>
        </div>
    </aside>
</div>

<#include "module/footer.ftl" />
