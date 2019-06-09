<@commonTag method="menus">
    <#list menus?sort_by('menuSort') as menu>
        <a class="navbar-item " href="${menu.menuUrl}"  target="${menu.menuTarget!}">
        <span class="right">${menu.menuName}</span>
        </a>
    </#list>
</@commonTag>
