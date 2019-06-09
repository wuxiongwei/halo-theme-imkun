    <div class="container">
        <div class="timeline-vertical">
            <ul class="timeline timeline-split">
                <#list posts.content as post>
                    <#if post.postDate?string("yyyy") = .now?string("yyyy")>
                        <li class="timeline-item" data-date="${post.postDate?string("MM-dd")}">
                    <#else>
                        <li class="timeline-item" data-date="${post.postDate?string("yyyy-MM")}">
                    </#if>
                            <div class="timeline-info">
                                <span></span>
                            </div>
                            <div class="timeline-marker blue-marker"></div>
                            <div class="timeline-content">
                                <p>
                                    <a href="#${post.postDate?string("yyyy-MM-dd HH:mm:ss.SSS")}">${post.postTitle}</a>
                                </p>
                            </div>
                        </li>
               </#list>
            </ul>
        </div>
    </div>

