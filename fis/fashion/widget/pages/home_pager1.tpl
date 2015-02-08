{%foreach $contentBlockConf as $key => $item%}
	<div class="section block" alog-alias="blocks">
		<div class="main-content">
			<h2 class="block-title">{%$item.main.title|escape:none%}</h2>
			{%widget name="fashion:widget/`$item.main.tpl`/`$item.main.tpl`.tpl" call=$item.main.tpl data=$item.main%}
		</div>
		<div class="side-content">
			<div class="block-title">{%$item.side.title|escape:none%}</div>
			{%widget name="fashion:widget/`$item.side.tpl`/`$item.side.tpl`.tpl" call=$item.side.tpl data=$item.side%}
		</div>
	</div>
{%/foreach%}