{%function name="toplist" data=[]%}
{%$videos = array_slice($data.videos,0,8)%}
<div class="top-list-wrap" static="bl={%$data.logid%}">
    <ul class="top-list">
        {%foreach $videos as $key => $item%}
        <li{%if $item@index == 0 %} class="active"{%/if%}>
            <a href="{%$item.url%}" title="{%$item.title%}" target="_blank" class="view-box" static="li={%$item@index%}">
                <div class="top-cover view">
                    <img src="{%$item.imgh_url%}" class="img" alt="{%$item.title%}">
                    <span class="s-mask"></span>
                    <span class="s-play"></span>
                    <span class="info-bg"></span>
                    <div class="ie6-trick"></div>
                </div>
                <div class="top-info">
                    <p>{%$item.title|mb_truncate:16%}</p>
                    <span{%if $item@index == 0 < 3%} class="top3"{%/if%}>{%if $item@index == 0+1<10%}0{%/if%}{%$item@index+1%}</span>
                    {%if $item.hot_day%}<b>{%number_format($item.hot_day/10000,1)%}万</b>{%/if%}
                </div>
            </a>
        </li>
        {%/foreach%}
    </ul>
</div>
{%/function%}