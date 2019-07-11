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
                    <#include "../icons/twitter.ftl">
                </a>
            </div>
        </#if>

        <#if settings.facebook??>
            <div>
                <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="FACKBOOK" href="https://www.facebook.com/${settings.facebook}" target="_blank" rel="noopener">
                    <#include "../icons/facebook.ftl">
                </a>
            </div>
        </#if>

        <#if settings.instagram??>
            <div>
                <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="INSTAGRAM" href="https://www.instagram.com/${settings.instagram}" target="_blank" rel="noopener">
                    <#include "../icons/instagram.ftl">
                </a>
            </div>
        </#if>

        <#if settings.dribbble??>
            <div>
                <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="DRIBBBLE" href="https://dribbble.com/${settings.dribbble}" target="_blank" rel="noopener">
                    <#include "../icons/dribbble.ftl">
                </a>
            </div>
        </#if>

        <#if settings.weibo??>
            <div>
                <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="WEIBO" href="https://weibo.com/${settings.weibo}" target="_blank" rel="noopener">
                    <#include "../icons/weibo.ftl">
                </a>
            </div>
        </#if>

        <#if settings.qq??>
            <div>
                <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="QQ" href="tencent://message/?uin=${settings.qq}&Site=&Menu=yes" target="_blank" rel="noopener">
                    <#include "../icons/qq.ftl">
                </a>
            </div>
        </#if>

        <#if settings.telegram??>
            <div>
                <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="TELEGRAM" href="https://t.me/${settings.telegram}" target="_blank" rel="noopener">
                    <#include "../icons/telegram.ftl">
                </a>
            </div>
        </#if>

        <#if settings.email??>
            <div>
                <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="EMAIL" href="mailto:${settings.email}" target="_blank" rel="noopener">
                    <#include "../icons/email.ftl">
                </a>
            </div>
        </#if>

        <#if settings.github??>
            <div>
                <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="GITHUB" href="https://github.com/${settings.github}" target="_blank" rel="noopener">
                    <#include "../icons/github.ftl">
                </a>
            </div>
        </#if>

        <#if settings.cnblog??>
            <div>
                <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="CNBLOG" href="https://www.cnblogs.com/${settings.cnblog}/" target="_blank" rel="noopener">
                    <#include "../icons/cnblog.ftl">
                </a>
            </div>
        </#if>

        <#if settings.stackoverflow??>
            <div>
                <a class="social-link social-link-fb simptip-position-top simptip-movable" data-tooltip="STACKOVERFLOW" href="https://stackoverflow.com/users/${settings.stackoverflow}" target="_blank" rel="noopener">
                    <#include "../icons/stackoverflow.ftl">
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
        <h3 class="im-title">最新文章</h3>
    </header>
    <#list posts.content as post>
        <#if post_index lt 5 >
            <@articles_card post></@articles_card>
        </#if>
    </#list>
</div>