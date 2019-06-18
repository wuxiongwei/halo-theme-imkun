<!DOCTYPE html>
<html lang="en" >

<head>
    <meta charset="UTF-8">
    <title>Responsive Blog Card Slider </title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/css/swiper.min.css'>

    <link rel="stylesheet" href="${static!}/source/css/slideshow.css" />

</head>

<body>

<div class="blog-slider animated slideInRight">
    <div class="blog-slider__wrp swiper-wrapper">

<#--        <@categoryTag method="list">-->
<#--            <#assign randFactor=randomMethod(0,tags?size)/>-->
<#--            <@postTag method="listByCategoryId" categoryId="${randFactor}">-->
<#--                    <#list posts1 as post>-->
<#--                        <div class="blog-slider__item swiper-slide">-->
<#--                            <div class="blog-slider__img">-->
<#--                                <#if post.thumbnail??>-->
<#--                                    <img src="${post.thumbnail}"-->
<#--                                         alt="${post.title}">-->
<#--                                </#if>-->
<#--                            </div>-->
<#--                            <div class="blog-slider__content">-->
<#--                                <span class="blog-slider__code">26 December 2019</span>-->
<#--                                <div class="blog-slider__title"> ${post.title}</div>-->
<#--                                <div class="blog-slider__text">${post.summary!} </div>-->
<#--                            </div>-->
<#--                        </div>-->
<#--                    </#list>-->
<#--            </@postTag>-->
<#--        </@categoryTag>-->

        <@photoTag method="list">
            <#list photos as photo>
                <#if photo_index < 5>
                <div class="blog-slider__item swiper-slide">
                    <div class="blog-slider__img">
                        <img src="${photo.url}" alt="${photo.name}">
                    </div>
                    <div class="blog-slider__content">
                        <span class="blog-slider__code">${photo.takeTime?string["EEE MMM d"]}</span>
                        <div class="blog-slider__title">${photo.name}</div>
                        <div class="blog-slider__text">${photo.description}</div>
                        <a href="/photos" class="blog-slider__button">VIEW MORE</a>
                    </div>
                </div>
                </#if>
            </#list>
        </@photoTag>


        <div class="blog-slider__item swiper-slide">
            <div class="blog-slider__img">
                <img src="https://i.loli.net/2019/06/18/5d086f9a391d070881.jpg" alt="">
            </div>
            <div class="blog-slider__content">
                <span class="blog-slider__code">26 December 2019</span>
                <div class="blog-slider__title">Lorem Ipsum Dolor</div>
                <div class="blog-slider__text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Recusandae voluptate repellendus magni illo ea animi?</div>
                <a href="#" class="blog-slider__button">READ MORE</a>
            </div>
        </div>
        <div class="blog-slider__item swiper-slide">
            <div class="blog-slider__img">
                <img src="https://www.imkun.dev/upload/2019/6/screenshot-b1085afcefba4b328e287685675ead60.jpg" alt="">
            </div>
            <div class="blog-slider__content">
                <span class="blog-slider__code">26 December 2019</span>
                <div class="blog-slider__title">Lorem Ipsum Dolor</div>
                <div class="blog-slider__text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Recusandae voluptate repellendus magni illo ea animi?</div>
                <a href="#" class="blog-slider__button">READ MORE</a>
            </div>
        </div>
    </div>
    <div class="blog-slider__pagination"></div>
</div>
<script src='https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/js/swiper.min.js'></script>



<script  src="./script.js"></script>
<script type="application/javascript">
    var swiper = new Swiper('.blog-slider', {
        spaceBetween: 30,
        effect: 'fade',
        // autoHeight: true,
        pagination: {
            el: '.blog-slider__pagination',
            clickable: true,
        },
        loop:true
    });
</script>



</body>

</html>
