{%function name="zoomin" data=[]%}
{%$videos = array_slice($data.videos,0,5)%}
<div class="zoomin-wrap"  static="bl={%$data.logid%}">
    <ul>
        {%foreach $videos as $key => $item%}
            <li class="{%if $item@index ==0%}active{%/if%} {%if $item@index ==4%}sub-item{%/if%}">
                <a href="{%$item.url%}" title="{%$item.title%}" target="_blank" static="li={%$item@index%}">
                    <img src="" class="img" data-src="http://v.baidu.com/commonapi/httpproxy/?url={%$item.imgv_url%}">
                    <span class="s-mask"></span>
                    <span class="box box-t"></span>
                    <span class="box box-r"></span>
                    <span class="box box-b"></span>
                    <span class="box box-l"></span>
                    <span class="s-info">{%$item.title|mb_truncate:8%}</span>
                </a>
            </li>
        {%/foreach%}
    </ul>
</div>
{%script%}
    require('./zoomin.js');
{%/script%}
{%/function%}