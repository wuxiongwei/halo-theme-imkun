<#macro post_card post>
<div class="im-article-block" id="${post.postDate?string("yyyy-MM-dd HH:mm:ss.SSS")}">
    <div class="card-1  is-horizontal  im-shadow-panel animated zoomIn">
        <div class="card-image">
            <#if post.postThumbnail??>
                <a href="/archives/${post.postUrl}">
                    <img src="${post.postThumbnail}"
                         alt="${post.postTitle}">
                </a>
            </#if>
        </div>
        <div class="card-content">
            <div class="card-1-header">${post.postDate?string("yyyy-MM-dd")}</div>
            <div class="card-1-content">
                <div class="card-1-title">
                    <a href="/archives/${post.postUrl}">
                    ${post.postTitle}
                    </a>
                </div>
                <div class="card-1-intro">
                    ${post.postSummary!}
                </div>
            </div>
            <div class="card-1-footer">
                <div class="card-1-author">${user.userDisplayName}</div>
                <div class="card-1-extra">
                    <span style="padding-right:20px"><i class="fa fa-eye" style="padding-right: 5px;"></i>${post.postViews}</span>
                    <span><i class="fa fa-comment" style="padding-right: 5px;"></i>${post.comments?size}</span>
                </div>
            </div>
        </div>
</div>
    </div>
</#macro>
