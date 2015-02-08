{%function name="focus" data=[]%}
<div class="focus-wrap" static="bl=focus">
    <div class="view-box poster">
        <a class="view" href="{%$data.videos[0].url%}" target="_blank" static="stp=po">
            <img src="{%$data.videos[0].imgh_url%}">
            <span class="s-mask"></span>
            <span class="s-play"></span>
            <span class="info-bg"></span>
            <span class="site">{%$data.videos[0].title|mb_truncate:45%}</span>
        </a>
    </div>
    {%widget name="fashion:widget/imglist/imglist.tpl" call="imglist" data=["videos"=>array_slice($data.videos,1,4),"titlen"=>28,"logid"=>"focus"]%}
</div>
{%/function%}