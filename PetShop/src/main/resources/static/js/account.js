/**
 * Created by Administrator on 2017/6/3.
 */

var LOGIN_URL="http://localhost:8080/account/login";
$(function(){
    $("#login").click(function(){
        var json=JSON.stringify($("#form1").serializeObject());
        $.ajax({
            data:json,
            contentType:"application/json",
            type:"POST",
            dataType:"json",
            url:LOGIN_URL,
            statusCode:{
                200:function(data){
                    var today=new Date();
                    var exminute=new Date(today);
                    exminute.setMinutes(today.getMinutes()+30);//在当前时间下+30分钟
                   $.cookie("pusername",data.username,{'expires':exminute})
                   window.location="main.html";
                },
                409:function(){

                    alert("登录失败！");
                }


            }

        });

    });
});