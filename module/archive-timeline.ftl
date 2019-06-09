    <div class="container">
        <div class="timeline-vertical">
            <ul class="timeline timeline-split">
                <#list posts.content as post>
                    <#if post.createTime?string("yyyy") = .now?string("yyyy")>
                        <li class="timeline-item" data-date="${post.createTime?string("MM-dd")}">
                    <#else>
                        <li class="timeline-item" data-date="${post.createTime?string("yyyy-MM")}">
                    </#if>
                            <div class="timeline-info">
                                <span></span>
                            </div>
                            <div class="timeline-marker blue-marker"></div>
                            <div class="timeline-content">
                                <p>
                                    <a href="#${post.createTime?string("yyyy-MM-dd hh:mm:ss")}">${post.title}</a>
                                </p>
                            </div>
                        </li>
               </#list>
            </ul>
        </div>
    </div>


