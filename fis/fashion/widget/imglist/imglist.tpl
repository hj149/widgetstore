{%function name="imglist" data=[]%}
{%$videos = $data.videos%}
{%if isset($data.titlen)%}
    {%$len = $data.titlen%}
{%else%}
    {%$len = 28%}
{%/if%}
<div class="img-list-wrap" {%if isset($data.logid)%}static="bl={%$data.logid%}"{%/if%}>
    <ul>
        {%foreach $videos as $key => $item%}
            <li class="{%if isset($data.narrow) && $item@index>=$data.narrow%}sub-item{%/if%}">
                <a class="view-box" href="{%$item.url%}" target="_blank" title="{%$item.title%}" static="li={%$item@index%}">
                    <span class="view">
                        <img class="img" alt="{%$item.title%}" src="{%$item.imgh_url%}">
                        <span class="s-mask"></span>
                        <span class="s-play"></span>
                    </span>
                    <span class="title">{%$item.title|mb_truncate:$len%}</span>
                </a>
            </li>
        {%/foreach%}
    </ul>
</div>
{%/function%}