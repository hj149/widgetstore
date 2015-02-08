{%*
* 数据文件
*
* 约定
*   1. 只允许在这里定义数据，请勿插入其他页面逻辑
*   2. 在模板里通过include引入此文件
*   3. 编码风格保持一致，包括：缩进、单双引号等
*%}

{%* 全局配置 start ---------------------------------------------------------- *%}

{%* 全局统计参数 *%}
{%$logParams = [
	[ "name" => "tn", "value" => $pageTn],
	[ "name" => "tpl", "value" => $pageTn]
]%}
{%assign var="logParams" value=$logParams scope="global"%}

{%* 全局配置 end ------------------------------------------------------------ *%}


{%* 检查分屏 start ---------------------------------------------------------- *%}

{%* 默认为首屏 *%}
{%$currentPage = "first"%}

{%if isset($smarty.get) && isset($smarty.get.pagelets) && $smarty.get.pagelets%}
    {%foreach $smarty.get.pagelets as $item%}
        {%if $item == "pager1"%}
            {%$currentPage = $item%}
            {%break%}
        {%/if%}
    {%/foreach%}
{%/if%}

{%* 检查分屏 end ------------------------------------------------------------ *%}


{%* 首屏数据 start ---------------------------------------------------------- *%}

{%if $currentPage == "first"%}

{%$demoDataFirst = []%}
{%assign var="dataFirst" value=$demoDataFirst scope="global"%}

{%/if%}

{%* 首屏数据 end ------------------------------------------------------------ *%}


{%* 第二屏数据 start -------------------------------------------------------- *%}

{%if $currentPage == "pager1"%}

{%* 内容区块 *%}
{%*
* @des 排行榜数据集
* @param  name          区块名
* @param  main          左栏区块
* @param  side          右栏区块
*%}
{%$demoDataSecond = []%}
{%assign var="dataSecond" value=$demoDataSecond scope="global"%}

{%/if%}

{%* 第二屏数据 end ---------------------------------------------------------- *%}
