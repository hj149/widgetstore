{%function name="subnav" data=[]%}
    <ul class="subnav-wrap" static="bl=subnav">
        {%foreach $data.items as $key => $item%}
            <li {%if $item.name == $data.current%}class="active"{%/if%}><a static="stp={%$item.name%}" href="{%$item.url%}">{%$item.title%}</a></li>
        {%/foreach%}
    </ul>
{%/function%}