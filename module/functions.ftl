<#-- 随机颜色 -->
<#macro randBgColor>
    <#assign bgColor=['red','red1','orange','green','green1','cyan','blue','blue1','purple','purple1']/>
    ${bgColor[randomMethod(0,10)]}
</#macro>

<#-- 随机图标 -->
<#macro randBgIco>
    <#assign bgColor=['fa-sign-language','fa-universal-access','fa-cannabis','fa-code','fa-hackerrank','fa-jenkins','fa-kaggle','fa-mouse-pointer','fa-people-carry']/>
    ${bgColor[randomMethod(0,9)]}
</#macro>