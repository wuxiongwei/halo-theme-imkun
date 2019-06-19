<header class="navbar animated slideInDown">
    <div class="im-menu">
        <div class="im-inner-menu">
            <div class="im-flex">
                <div class="im-menus">
                    <ul>
                        <li><a href="/" class="blog_title">${options.blog_title!}</a></li>
                        <@menuTag method="list">
                                <#list menus?sort_by('priority') as menu>
                                    <li><a href="${menu.url}" target="${menu.target!'_blank'}">${menu.name}</a></li>
                                </#list>
                        </@menuTag>
                    </ul>
                </div>

                <div class="im-search">
                    <form action="${context!}/search">
                    <li class="item-search">
                        <div class="">
                            <div class="Search-input"><input class="FormControl" type="search" name="keyword" placeholder="Search ...">
                            </div>
                            <ul class="Dropdown-menu Search-results"></ul>
                        </div>
                    </li>
                    </form>
                </div>
            </div>
        </div>
    </div>
</header>

