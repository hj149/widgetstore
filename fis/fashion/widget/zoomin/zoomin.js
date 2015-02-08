
function grey(data,i){
    return parseInt((0.299 * data[i] + 0.578 * data[i + 1] + 0.114 * data[i + 2]));
}

function brightness(value,bright,contrast){
    var bri = bright / 50;// -1,1
    var ctr = contrast || 0;
    var c = ctr / 50;// -1,1
    var k = Math.tan((45 + 44 * c) * Math.PI / 180);
    return (value - 127.5 * (1 - bri)) * k + 127.5 * (1 + bri);
}

function filter(src,bri,ctr){
    var canvas=document.createElement('canvas');
    var ctx=canvas.getContext('2d');
    var img=new Image();
    img.src=src;
    canvas.height=img.height;
    canvas.width=img.width;
    ctx.drawImage(img,0,0);
    var imgdata=ctx.getImageData(0,0,canvas.width,canvas.height);
    var data=imgdata.data;
    for(var i=0,n=data.length;i<n;i+=4){
        //灰度
        var point = grey(data,i);
        //亮度对比度
        point = brightness(point,bri,ctr);
        data[i + 2] = data[i + 1] = data[i] = point;
    }
    ctx.putImageData(imgdata,0,0);
    return canvas.toDataURL();
}
function init(){
    var supportCanvas = true;
    try{
        document.createElement("canvas").getContext("2d");
    }catch(e){
        //不支持canvas
        supportCanvas = false;
    }
    var imgs = $('.zoomin-wrap .img'),counter = imgs.length;
    imgs.each(function(){
        var src = $(this).data('src');
        if(supportCanvas){
            var clone = new Image()
            this.onload = function(){
                clone.src = filter(src,-5,5);
            }
            $(clone).addClass('copy').insertAfter($(this));
        }
        this.src = src;
    });
}

exports = init();