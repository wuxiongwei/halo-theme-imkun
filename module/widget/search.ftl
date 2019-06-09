<link rel="stylesheet" href="/${themeName}/source/css/search.css">
<div class="search">
    <div id="cover">
        <form method="get" action="${context!}/search">
            <div class="tb">
                <div class="td"><input type="text" name="keyword" placeholder="Search" required></div>
                <div class="td" id="s-cover">
                    <button type="submit">
                        <div id="s-circle"></div>
                        <span></span>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>