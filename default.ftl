<#macro default title,keyword,desc,canonical,body_class>
    <#import "/common/macro/common_macro.ftl" as common>
    <!DOCTYPE html>
    <html lang="zh-CN">
    <head>

        <#-- Document Settings -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <#-- Base Meta -->
        <title>${title}</title>
        <meta name="HandheldFriendly" content="True" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="">
        <link rel="stylesheet" href="${static!}/source/css/common.css" />
        <link rel="stylesheet" href="${static!}/source/css/weight.css" />
        <link rel="stylesheet" href="${static!}/source/css/menu.css" />
        <link rel="stylesheet" href="${static!}/source/css/article.css" />
        <link rel="stylesheet" href="${static!}/source/plugins/simptip/simptip.min.css" />
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Nunito'>
        <link href="https://fonts.googleapis.com/css?family=Ubuntu:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
              integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

        <#-- This tag outputs SEO meta+structured data and other important settings -->
        <meta name="keywords" content="${keyword}" />
        <meta name="description" content="${desc}" />
        <@common.verification />
        <@common.favicon />
        <link rel="canonical" href="${canonical}" />
        <meta name="referrer" content="no-referrer-when-downgrade" />

        <meta property="og:site_name" content="${title}" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="${title}" />
        <meta property="og:description" content="${desc}" />
        <meta property="og:url" content="${canonical}" />
        <meta property="og:image" content="${options.casper_general_cover!'/${static!}/assets/images/blog-cover.jpg'}" />
        <meta property="article:publisher" content="https://www.facebook.com/ghost" />
        <meta name="twitter:card" content="summary_large_image" />
        <meta name="twitter:title" content="${title}" />
        <meta name="twitter:description" content="${desc}" />
        <meta name="twitter:url" content="${canonical}" />
        <meta name="twitter:image" content="${options.casper_general_cover!'/${static!}/assets/images/blog-cover.jpg'}" />
        <meta name="twitter:site" content="@tryghost" />
        <meta property="og:image:width" content="2000" />
        <meta property="og:image:height" content="666" />
        <meta name="generator" content="Halo 0.0.7" />
        <link rel="alternate" type="application/rss+xml" title="${options.blog_title}" href="${options.blog_url}/feed.xml" />
        <link rel="stylesheet" href="${static!}/source/css/animate.css">
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>

        <#if post??>
            <script   src="https://code.jquery.com/jquery-3.4.1.min.js"   integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="   crossorigin="anonymous"></script>
            <link rel="stylesheet" type="text/css" href="${static!}/assets/prism/css/prism-${options.casper_general_code_pretty!'dracula'}.css" />
            <script type="text/javascript" src="${static!}/assets/prism/js/prism.js"></script>
            <link rel="stylesheet" href="${static!}/source/css/post.css">
            <script type="text/javascript" src="${static!}/source/js/post.js"></script>
        </#if>

    </head>
    <body class="${body_class}">
        <div id="outer-container">
    </body>
    </html>
</#macro>
