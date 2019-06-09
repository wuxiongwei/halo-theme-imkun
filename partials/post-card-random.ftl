<@commonTag method="randPost">
<div class="card-2-panal  animated fadeInRight">
    <div class="card-2 im-shadow-panel">
        <div class="card-2-image">
            <a href="/archives/${randPost.postUrl}">
                <#if randPost.postThumbnail??>
                    <img src="${randPost.postThumbnail}"
                         alt="${randPost.postTitle}">
                </#if>
            </a>
        </div>
        <div class="card-2-content">
            <div class="card-2-header ">${randPost.postDate?string("yyyy-MM-dd")}</div>
            <div class="card-2-article">
                <div class="card-2-title">
                    <a href="/archives/${randPost.postUrl}">${randPost.postTitle}</a>
                </div>
                <div class="card-2-footer">
                    <div class="card-2-author">${user.userDisplayName}</div>
                    <div class="card-2-extra"><span style="padding-right:20px"><i class="fa fa-eye" style="padding-right: 5px;"></i>${randPost.postViews}</span><span><i
                                    class="fa fa-comment" style="padding-right: 5px;"></i>${randPost.comments?size}</span></div>
                </div>
            </div>
        </div>
    </div>
</div>
</@commonTag>