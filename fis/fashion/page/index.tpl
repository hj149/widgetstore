{%extends file="./layout.tpl"%}
{%*
  * 约定
  *   1. 数据组装在 page/data/home.tpl 中进行，禁止在页面模板中做这个事
  *   2. 编码风格保持一致，包括：缩进、单双引号等
  *   3. 页面模板HTML中只允许有布局结构，禁止把组件结构直接写到模板上
  *%}
{%block name=titleAndMeta prepend%}{%/block%}
{%block name=head prepend%}
	{%require name="common:static/vendor/bigpipe/lazyload.js"%}
	{%require name="common:static/vendor/bigpipe/bigpipe.js"%}
{%/block%}

{%block name=pageData %}
	{%$pageTn = "xxx"%}
	{%$pageId = "page-video-xxx"%}
	{%include file="fashion/page/data/common.tpl"%}
	{%include file="common/widget/video/adv/misAdvData.tpl"%}
{%/block%}

{%block name=header prepend%}{%/block%}

{%* 主体内容 *%}
{%block name=content%}


	{%*自动打包插件首屏结束标识*%}
	{%setfs%}

	{%* 非首屏内容通过Quickling异步加载 *%}
	{%* 分页一 *%}
	{%widget name="fashion:widget/pages/home_pager1.tpl" mode="quickling" pagelet_id="pager1"%}

{%/block%}

{%block name=footer%}
	<div id="footer" alog-alias="home-footer">
		{%widget name="common:widget/video/footer/footer.tpl" call="footer" isSearch=false%}
	</div>
{%/block%}
