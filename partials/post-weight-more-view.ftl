<@articleTag method="hotPosts">
    <#list hotPosts as post>
        <#if post_index lt 4 >
            <ul class="tb-list">
            <li class="tb-item hvr-sweep-to-right ">
            <a class="tb-link" href="/archives/${post.postUrl}">
            <#if post.postThumbnail??>
                <img class="tb-ava" src="${post.postThumbnail}"
                alt="">
            </#if>
            <span class="tb-name">${post.postTitle}</span>
            <p class="tb-work">${post.categories[0].cateName}</p>
            <b class="tb-num"><i class="fa fa-eye" style="padding-right: 5px;"></i>${post.postViews}</b>
            </a>
            </li>
            </ul>
        </#if>
    </#list>
</@articleTag>