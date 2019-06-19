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
                <#if settings.twitter??>
                    <div>
                        <a class="social-link social-link-tw simptip-position-top simptip-movable" data-tooltip="TWITTER" href="https://twitter.com/${settings.twitter}" target="_blank" rel="noopener">
                            <#include "module/icons/twitter.ftl">
                        </a>
                    </div>
                </#if>

                <#if settings.facebook??>
                     <div>
                    <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="FACKBOOK" href="https://www.facebook.com/${settings.facebook}" target="_blank" rel="noopener">
                        <#include "module/icons/facebook.ftl">
                    </a>
                    </div>
                </#if>

                <#if settings.instagram??>
                    <div>
                    <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="INSTAGRAM" href="https://www.instagram.com/${settings.instagram}" target="_blank" rel="noopener">
                        <#include "module/icons/instagram.ftl">
                    </a>
                    </div>
                </#if>

                <#if settings.dribbble??>
                    <div>
                    <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="DRIBBBLE" href="https://dribbble.com/${settings.dribbble}" target="_blank" rel="noopener">
                        <#include "module/icons/dribbble.ftl">
                    </a>
                    </div>
                </#if>

                <#if settings.weibo??>
                    <div>
                    <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="WEIBO" href="https://weibo.com/${settings.weibo}" target="_blank" rel="noopener">
                        <#include "module/icons/weibo.ftl">
                    </a>
                    </div>
                </#if>

                <#if settings.qq??>
                    <div>
                    <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="QQ" href="tencent://message/?uin=${settings.qq}&Site=&Menu=yes" target="_blank" rel="noopener">
                        <#include "module/icons/qq.ftl">
                    </a>
                    </div>
                </#if>

                <#if settings.telegram??>
                    <div>
                    <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="TELEGRAM" href="https://t.me/${settings.telegram}" target="_blank" rel="noopener">
                        <#include "module/icons/telegram.ftl">
                    </a>
                    </div>
                </#if>

                <#if settings.email??>
                    <div>
                    <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="EMAIL" href="mailto:${settings.email}" target="_blank" rel="noopener">
                        <#include "module/icons/email.ftl">
                    </a>
                    </div>
                </#if>

                <#if settings.github??>
                    <div>
                    <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="GITHUB" href="https://github.com/${settings.github}" target="_blank" rel="noopener">
                        <#include "module/icons/github.ftl">
                    </a>
                    </div>
                </#if>

                <#if settings.cnblog??>
                    <div>
                    <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="CNBLOG" href="https://www.cnblogs.com/${settings.cnblog}/" target="_blank" rel="noopener">
                        <#include "module/icons/cnblog.ftl">
                    </a>
                    </div>
                </#if>

                <#if settings.stackoverflow??>
                    <div>
                    <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="STACKOVERFLOW" href="https://stackoverflow.com/users/${settings.stackoverflow}" target="_blank" rel="noopener">
                        <#include "module/icons/stackoverflow.ftl">
                    </a>
                    </div>
                </#if>
            </div>
        </div>
        <div class="im-classify  im-shadow animated slideInLeft">
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

        <div class="im-classify  im-shadow animated slideInLeft">
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
