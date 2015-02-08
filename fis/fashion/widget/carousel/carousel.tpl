{%function name="carousel" data=[] %}
{%$id = "carousel-wrap-{%rand()%}"%}
<div class="carousel-wrap" id="{%$id%}" static="bl={%$data.logid%}">
    <div class="view-wrap">
        <div class="view-point">
            <div class="view-cont">
            {%widget name="fashion:widget/imglist/imglist.tpl" call="imglist" data=["videos"=>array_slice($data.videos,0,floor(count($data.videos)/2)*2)]%}
            </div>
        </div>
    </div>
    <div class="control">
        <div class="mask-left"></div>
        <div class="mask-right"></div>
        <a class="prev" static="stp=pre"></a>
        <a class="next" static="stp=nxt"></a>
    </div>
</div>
{%script%}
    var items = $('#{%$id%} .view-cont li');
    $('#{%$id%} .view-cont').width(items.outerWidth(true)*Math.ceil(items.size()/2));
    require('./carousel.js').init({
        el:'#{%$id%}',
        autoplay:false
    });
{%/script%}
{%/function%}