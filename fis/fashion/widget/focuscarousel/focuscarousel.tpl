{%function name="focuscarousel" data=[]%}
{%$videos = $data.videos%}
<div class="focus-car-wrap" static="bl={%$data.logid%}">
<div class="ly-left">
    <div class="poster">
        <a static="stp=po" class="view-box" title="{%$videos[0].title%}" href="{%$videos[0].url%}" target="_blank">
            <span class="view">
                <img class="img" alt="{%$videos[0].title%}" src="{%$videos[0].imgh_url%}">
                <span class="s-mask"></span>
                <span class="s-play"></span>
                <span class="info-bg"></span>
                <span class="site">{%$videos[0].title|mb_truncate:30%}</span>
            </span>
        </a>
    </div>
    <ul class="list-group">
        {%for $foo=1 to 4%}
            <li><a static="stp=txt&li={%$foo%}" href="{%$videos[$foo].url%}" title="{%$videos[$foo].title%}" target="_blank">{%$videos[$foo].title|mb_truncate:29%}</a></li>
        {%/for%}
    </ul>
</div>
<div class="ly-right" static="bl={%$data.logid%}&stp=md">
    {%widget name="fashion:widget/imglist/imglist.tpl" call="imglist" data=["videos"=>array_slice($videos,5,6),"narrow"=>4]%}
</div>
</div>
{%/function%}