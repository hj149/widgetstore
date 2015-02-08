{%function name="focus" data=[]%}
<div class="focus-wrap" static="bl=focus">
    <ul class="nav-tabs" role="tablist">
        {%foreach $data.videos as $key => $item%}
        {%if $item@index>4%}{%break%}{%/if%}
          <li class="{%if $item@index == 0%}active{%/if%} {%if $item@index == 4%}last{%/if%}"><a title="{%$item.title%}" static="stp=nav&li={%$item@index%}" href="#focuse_{%$item@index%}" role="tab" data-toggle="tab">
                  <img class="thumbnail" src="{%$item.imgv_url%}">
                  <h3 class="title">{%$item.title|mb_truncate:9%}</h3>
                  <p class="info">{%$item.s_intro|mb_truncate:15%}</p>
          </a></li>
        {%/foreach%}
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
        {%foreach $data.videos as $key => $item%}
        {%if $item@index>4%}{%break%}{%/if%}
            <div role="tabpanel" class="tab-pane fade{%if $item@index == 0%} in active{%/if%}" id="focuse_{%$item@index%}">
                <a static="stp=poster&li={%$item@index%}" href="{%$item.url%}" title="{%$item.title%}" target="_blank">
					<img src="{%$item.imgh_url%}">
					<span class="info-bg"></span>
					<span class="site">{%$item.title|mb_truncate:30%}</span>
				</a>
            </div>
        {%/foreach%}
    </div>
</div>
{%script%}
    require('common:static/vendor/bootstrap/js/tab.js');
{%/script%}
{%/function%}