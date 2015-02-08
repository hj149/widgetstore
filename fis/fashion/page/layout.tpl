<!DOCTYPE HTML>
{%*
  * 约定
  *   1. 数据组装在 page/data/home.tpl 中进行，禁止在页面模板中做这个事
  *   2. 编码风格保持一致，包括：缩进、单双引号等
  *   3. 页面模板HTML中只允许有布局结构，禁止把组件结构直接写到模板上
  *%}

{%* 使用html插件替换普通html标签，同时注册JS组件化库 *%}
{%html framework="common:static/mod.js" fid="video" sampleRate="0.2" class="develop_"%}
	{%* 使用head插件替换head标签，主要为控制加载同步静态资源使用 *%}
	{%head%}
		<meta charset="utf-8" />
		{%block name=titleAndMeta%}
		<title></title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		{%/block%}
		<script>(function(){var hash=location.hash.slice(1);if(hash){var params=hash.split('&'),item;for(var i=0,len=params.length;i<len;i++){item=params[i].split('=');if(item[0]==='word'&&item[1]){location.replace('http://v.baidu.com/v?fr=quicksearch&ie=utf-8&word='+item[1]);break;}}}}());</script>
		{%block  name=head%}
            {%require name="common:static/vendor/reset/reset.less"%}
			{%require name="common:static/vendor/jquery/jquery_expand.js"%}
		{%/block%}
	{%/head%}
    {%* 使用body插件替换body标签，主要为可控制加载JS资源 *%}
	{%body%}
		{%* 数据文件 *%}
		{%block name="pageData"%}{%/block%}
		{%* 优先执行的脚本 *%}
		{%script%}
			{%* Quickling *%}
			$.log('http://nsclick.baidu.com/p.gif?pid=104&u='+encodeURIComponent(window.location.href)+'&tn={%$pageTn%}&tpl={%$pageTn%}&sa=true{%if isset($city) && $city%}&city={%$city%}{%/if%}');
			$(function() {
				{%* PV统计 *%}
				$.log('http://nsclick.baidu.com/u.gif?pid=104&fe=bigpipe&page={%$pageTn%}&first=1');
				//异步加载第二屏
				BigPipe.asyncLoad({id: "pager1"});
			});

			{%* 图片懒加载 *%}
			require('common:static/ui/lazyloader/lazyloader.js');
		{%/script%}

		{%block name="header"%}
			{%* 站点统一头部 *%}
			{%widget name="common:widget/video/header/header.tpl" call="header" openMini=true%}

			{%* 站点导航 *%}
			{%widget name="common:widget/video/nav/nav.tpl" call="nav"%}
		{%/block%}
		
		{%* 主体内容 *%}
		<div id="content" class="container">
			{%block name="content"%}{%/block%}
		</div>

		{%* 首页footer *%}
		{%block name="footer"%}
		<div id="footer">
			{%widget name="common:widget/video/footer/footer.tpl" call="footer" isSearch=false%}
		</div>
		{%/block%}
		{%require name="fashion:static/page/layout.less"%}

		{%* 其他模块 *%}
		{%block name="other" %}
		{%/block%}


		{%* 统计组件 *%}
		{%widget name="common:widget/global/statistics/statistics.tpl" call="statistics" logParams=$logParams%}
		{%widget name="common:widget/global/hunter/hunter.tpl" call="hunter" pageId="$pageId" description="xxx"%}

		{%* 广告渲染组件 *%}
		{%widget name="common:widget/video/advList/advList.tpl"%}

		{%* 返回顶部组件 *%}
		{%widget name="common:widget/global/backTop/backTop.tpl"%}

		{%script%}
			{%* 页面响应式 *%}
			require("common:static/ui/client/responsive.js").start();
		{%/script%}
	{%/body%}
{%/html%}
