<?php
function conv(&$data,$from = 'gbk',$to = 'utf-8//IGNORE')
{
    if(is_array($data))
    {
        foreach($data as $key=>$value ){
            if(is_array($value)){
                conv($data[$key],$from,$to);
            }else{
                $data[$key] = conv($data[$key],$from,$to);
            }
        }
    }else{
        return iconv($from,$to,$data);
    }
}
$videos = array();
foreach(range(1, 10) as $i) {
    array_push($videos, array(
        "title" => "凤凰浴火sadfsaf传safdsadfasdfsdfasdfs是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇传奇是传奇 凤凰传奇北京工体演唱会实录",
        "s_intro" => "你好爱的按说我是传奇 凤是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇凰传奇北京工体演",
        "url" => "http://v.baidu.com",
        "imgh_url" => "http://29293.pic.baomihua.com/pic/5177172037975814676.jpg",
        "imgv_url" => "http://29293.pic.baomihua.com/pic/5177172037975814676.jpg",
        "hot_week" => "347",
        "episode" => "30课时",
        "sites" => "考试网",
        "hot_day" => "3"
    ));
    array_push($videos, array(
        "title" => "凤凰浴火凤凰浴火凤凰浴火凤凰浴火是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇凤凰浴火凤凰浴火凤凰浴火",
        "s_intro" => "你好爱你好爱你好爱你好爱你好爱是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇你好爱你好爱你好爱",
        "url" => "http://v.baidu.com",
        "imgh_url" => "http://img0.bdstatic.com/img/image/shouye/lyngaomen.jpg",
        "imgv_url" => "http://img0.bdstatic.com/img/image/%E8%8B%B1%E5%9B%BD%E5%9F%8E%E5%A0%A1%E5%A4%A7%E5%AD%A6.jpg",
        "hot_week" => "347",
        "episode" => "30课时",
        "sites" => "考试网",
        "hot_day" => "3"
    ));
}
//conv($videos);
$test_data = array(
    "video_num" => 10,
    "videos" => $videos
);
$xiuchang_data = array(
    "video_num" => 5,
    "videos" => array(
        array(
            "title" => "凤凰浴火凤凰浴火凤凰浴火是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇凤凰浴火凤凰浴火凤凰浴火凤凰浴火",
            "s_intro" => "你好爱你好爱你好爱你好爱是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇你好爱你好爱你好爱你好爱",
            "url" => "http://v.baidu.com",
            "imgh_url" => "http://img0.bdstatic.com/img/image/shouye/lyngaomen.jpg",
            "imgv_url" => "http://hejie.baidu.com:8081/static/v3/fashion/page/test/img1.jpg",
            "hot_week" => "347",
            "episode" => "30课时",
            "sites" => "考试网",
            "hot_day" => "3"
        ),
        array(
            "title" => "凤凰sdfsadfdsaf浴火凤凰浴火凤凰浴是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇火凤凰浴火凤凰浴火凤凰浴火凤凰浴火",
            "s_intro" => "你好爱你好爱你好爱你好是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇爱你好爱你好爱你好爱你好爱",
            "url" => "http://v.baidu.com",
            "imgh_url" => "http://img0.bdstatic.com/img/image/shouye/lyngaomen.jpg",
            "imgv_url" => "http://hejie.baidu.com:8081/static/v3/fashion/page/test/img2.jpg",
            "hot_week" => "347",
            "episode" => "30课时",
            "sites" => "考试网",
            "hot_day" => "3"
        ),
        array(
            "title" => "凤凰浴火凤凰浴火凤凰浴火是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇凤凰浴火凤凰浴火凤凰浴火凤凰浴火",
            "s_intro" => "你好爱你sadfsafsaf好爱你好爱你好是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇爱你好爱你好爱你好爱你好爱",
            "url" => "http://v.baidu.com",
            "imgh_url" => "http://img0.bdstatic.com/img/image/shouye/lyngaomen.jpg",
            "imgv_url" => "http://hejie.baidu.com:8081/static/v3/fashion/page/test/img1.jpg",
            "hot_week" => "347",
            "episode" => "30课时",
            "sites" => "考试网",
            "hot_day" => "3"
        ),
        array(
            "title" => "凤凰浴火凤凰浴火凤凰浴火是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇凤凰浴火凤凰浴火凤凰浴火凤凰浴火",
            "s_intro" => "你sdfsafsadfsdf好爱你好爱你好爱你好是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇爱你好爱你好爱你好爱你好爱",
            "url" => "http://v.baidu.com",
            "imgh_url" => "http://img0.bdstatic.com/img/image/shouye/lyngaomen.jpg",
            "imgv_url" => "http://hejie.baidu.com:8081/static/v3/fashion/page/test/img2.jpg",
            "hot_week" => "347",
            "episode" => "30课时",
            "sites" => "考试网",
            "hot_day" => "3"
        ),
        array(
            "title" => "凤凰浴火凤凰浴火凤凰浴火是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇凤凰浴火凤凰浴火凤凰浴火凤凰浴火",
            "s_intro" => "你好爱你好爱你好爱你好是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇是传奇 凤凰传奇爱你好爱你好爱你好爱你好爱",
            "url" => "http://v.baidu.com",
            "imgh_url" => "http://img0.bdstatic.com/img/image/shouye/lyngaomen.jpg",
            "imgv_url" => "http://hejie.baidu.com:8081/static/v3/fashion/page/test/img2.jpg",
            "hot_week" => "347",
            "episode" => "30课时",
            "sites" => "考试网",
            "hot_day" => "3"
        )
    )
);
//conv($xiuchang_data);
$fis_data = array(
    /**第一屏**/
    //焦点大图
    "page_name" => "chaoliu",
    "fashion_sub_focus" => $test_data,
    "fashion_sub_xiangguan" => $test_data,
    "fashion_sub_zhoubian" => $test_data,
    "fashion_sub_xiuchang_main" => $xiuchang_data,
    "fashion_sub_xiuchang_side" => $test_data
);