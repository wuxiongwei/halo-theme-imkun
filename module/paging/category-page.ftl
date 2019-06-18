<nav class="pagination is-centered animated fadeInUp" role="navigation" aria-label="pagination">
    <#if posts.hasPrevious()>
        <div class="pagination-previous"><a class="is-flex-grow has-text-black-ter" href="/page/${posts.getNumber()}">Previous</a></div>
    </#if>
    <ul class="pagination-list is-hidden-mobile">
        <#if posts.totalPages lt 6>
            <#list 1 ..posts.totalPages as i>
                <#if posts.getNumber() +1 == i>
                    <li><a class="pagination-link is-current" href="#">${posts.getNumber()+1}</a></li>
                <#else >
                    <li><a class="pagination-link has-text-black-ter" href="/categories/${category.slugName}/page/${i}">${i}</a></li>
                </#if>
            </#list>
         <#else >
             <#if posts.isFirst()>
                 <#list 1..4 as i>
                     <#if posts.getNumber() +1 == i>
                         <li><a class="pagination-link is-current" href="#">${posts.getNumber()+1}</a></li>
                     <#else >
                         <li><a class="pagination-link has-text-black-ter" href="/page/${i}">${i}</a></li>
                     </#if>
                 </#list>
                 <li><span class="pagination-ellipsis has-text-black-ter">…</span></li>
                 <li><a class="pagination-link has-text-black-ter" href="/page/${posts.getTotalPages()}">${posts.getTotalPages()}</a></li>
             <#elseif posts.isLast()>
                 <li><a class="pagination-link has-text-black-ter" href="/page/1">1</a></li>
                 <li><span class="pagination-ellipsis has-text-black-ter">…</span></li>
                 <#list 1..3 as i>
                     <li><a class="pagination-link has-text-black-ter" href="/page/${posts.getTotalPages()-4+i}">${posts.getTotalPages()-4+i}</a></li>
                 </#list>
                 <li><a class="pagination-link is-current" href="#">${posts.getNumber()+1}</a></li>
             <#else >
                 <#if posts.getTotalPages() lt 6>
                     <#list 1..6 as i>
                         <#if posts.getNumber() +1 == i>
                             <li><a class="pagination-link is-current" href="#">${posts.getNumber()+1}</a></li>
                         <#else >
                             <li><a class="pagination-link has-text-black-ter" href="/page/${i}">${i}</a></li>
                         </#if>
                     </#list>
                 <#else >
                     <#if posts.getNumber() gt 2>
                         <li><a class="pagination-link has-text-black-ter" href="/page/1">1</a></li>
                         <li><span class="pagination-ellipsis has-text-black-ter">…</span></li>
                     </#if>
                     <li><a class="pagination-link has-text-black-ter" href="/page/${posts.getNumber()}">${posts.getNumber()}</a></li>
                     <li><a class="pagination-link is-current" href="#">${posts.getNumber()+1}</a></li>
                     <li><a class="pagination-link has-text-black-ter" href="/page/${posts.getNumber()+2}">${posts.getNumber()+2}</a></li>
                     <#if posts.getTotalPages() - posts.getNumber() gt 2>
                         <li><span class="pagination-ellipsis has-text-black-ter">…</span></li>
                         <li><a class="pagination-link has-text-black-ter" href="/page/${posts.getTotalPages()}">${posts.getTotalPages()}</a></li>
                     </#if>
                 </#if>
             </#if>
        </#if>
    </ul>
    <#if posts.hasNext()>
        <div class="pagination-next"><a class="is-flex-grow has-text-black-ter" href="/page/${posts.getNumber()+2}">Next</a></div>
    </#if>
</nav>
