<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>简单轮播图</title>
<!--	<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">-->
	<link rel="stylesheet" href="${static!}/plugins/photoalbum/css/style.css">
</head>
<body>
	<div class="jq22-container">
		
		<div id="wrapper">
			<div id="slider-wrap">
			      	  <ul id="slider">
						  <@photoTag method="list">
							  <#list photos as photo>
			          	 <li  style="background-image: url(${photo.url});background-repeat: no-repeat;
								 background-size: cover;">
			                <div>
			                    <h3>Slide #1</h3>
			                    <span>Sub-title #1</span>
			                </div>                
<#--			                <i class="fa fa-image"></i>-->
			             </li>
							  </#list>
						  </@photoTag>
			          </ul>
			          
			           <!--controls-->
			          <div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
			          <div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
			          <div id="counter"></div>
			          
			          <div id="pagination-wrap">
			            <ul>
			            </ul>
			          </div>
			          <!--controls-->  
			                 
			      </div>
		</div>
		
	</div>
	 
    <script type="text/javascript" src="${static!}/plugins/photoalbum/js/slide.js"></script>
</body>
</html>