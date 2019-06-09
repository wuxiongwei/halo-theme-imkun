<#macro post_card_vertical post>
<div class="card-2-panal animated zoomIn">
    <div class="card-2 im-shadow-panel">
        <div class="card-2-image">
            <#if post.postThumbnail??>
                <a href="/archives/${post.postUrl}">
            <img src="${post.postThumbnail}"
            alt="${post.postUrl}">
                </a>
            </#if>
        </div>

        <div class="card-2-content">
            <div class="card-2-header ">${post.postDate?string("yyyy-MM-dd")}</div>
            <div class="card-2-article">
                <div class="card-2-title">
                    <a href="/archives/${post.postUrl}"> ${post.postTitle}</a>
                </div>
                <div class="card-2-footer">
                    <div class="card-2-author">${user.userDisplayName}</div>
                    <div class="card-2-extra">
                        <span style="padding-right:20px"><i class="fa fa-eye" style="padding-right: 5px;"></i>${post.comments?size}</span>
                        <#if post.categories??>
                            <span><i class="fa fa-comment" style="padding-right: 5px;"></i>${post.categories[0].cateName}</span>
                        <#else >
                            <span><i class="fa fa-comment" style="padding-right: 5px;"></i>未分类</span>
                        </#if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</#macro>
