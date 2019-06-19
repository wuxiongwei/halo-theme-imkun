<#macro articles_card post>
<ul class="im-list">
    <li class="im-item hvr-sweep-to-right ">
        <a class="im-link" href="/archives/${post.url}">
            <#if post.thumbnail??>
            <div class="im-ava" style="background-image: url(${post.thumbnail})"></div>
            </#if>
            <span class="im-name weight-title">${post.title}</span>
                <p class="im-tag weight-extra-font-size">${post.editTime?string["EEE MMM d"]}</p>
            <#if post.visits??>
                <b class="im-viewers weight-extra-font-size">
                    <i class="fa fa-eye" style="padding-right: 5px;"></i>
                    ${post.visits}
                </b>
            </#if>
        </a>
    </li>
</ul>
</#macro>
