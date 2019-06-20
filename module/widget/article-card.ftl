<#macro article_card post>
<div class="im-weight-block-3 animated fadeInRight" style="transition: opacity 0.3s ease-out, transform 0.3s ease-out;
opacity: 1;
transform-origin: center top;">
    <div class="im-weight-block-3-inner im-shadow">
        <div class="im-weight-3-image">
            <#if post.thumbnail??>
            <a href="/archives/${post.url}">
                <img src="${post.thumbnail}"
                     alt="${post.title}">
            </a>
            </#if>
        </div>
        <div class="im-weight-3-content">
            <div class="im-weight-3-content-date gray extra-1-font-size">${post.editTime?string["EEE MMM d"]}</div>
            <div class="im-weight-3-content-article">
                <div class="weight-title">
                    <a href="/archives/${post.url}"> ${post.title}</a>
                </div>
                <div class="im-weight-3-footer">
                    <div class="im-weight-3-footer-author gray weight-extra-font-size">${user.nickname!}</div>
                    <div class="im-weight-3-footer-comments gray weight-extra-font-size"><span
                                style="padding-right:20px"><i class="fa fa-eye" style="padding-right: 5px;"></i>${post.visits}</span><span><i
                                    class="fa fa-comment" style="padding-right: 5px;"></i>${post.visits}</span></div>
                </div>
            </div>
        </div>
    </div>
</div>
</#macro>