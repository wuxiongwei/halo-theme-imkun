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
        <#include "module/widget/aside-left.ftl">
    </aside>
    <div class="r-container">
        <div class="slideshow">
            <#include "module/widget/slideshow.ftl">
        </div>
        <div class="inner-content">
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
                <#include "module/widget/aside-right.ftl">
            </aside>
            </div>
    </div>
</div>
<script type="application/javascript">
    $("document").ready(function () {
        // With options
        b = baffle('.blog_title', {
            characters: '${options.blog_title!}',
            speed: 75
        });

        b.reveal(1000);
    });
</script>
<#include "module/footer.ftl" />
