/**
 * Created by Administrator on 2017/6/3.
 */

var QUERYC_URL="http://localhost:8080/pet/queryc";

var REG_URL="http://localhost:8080/account/reg";
var lan=[
    {'id':'eng','name':'英语'},{'id':'chi','name':'中文'}
    ];

$(function(){
    //操作语种

    $("#lang option").remove();

    for(var index   in lan){

        $("#lang").append("<option value='"+ lan[index].id+"'>"+ lan[index].name+"</option>");
    }

    $("#category option").remove();
    $.ajax({
        url:QUERYC_URL,
        contentType:"application/json",
        type:"GET",
        dataType:"json",
        statusCode:{
            200:function(data){
                $(data).each(function(index){
                    $("#category").append("<option value='"+ data[index].catid+"'>"+ data[index].name+"</option>");
                });
            }
        }


    });

    $("#save").click(function(){//你点击了save按钮
        //做校验 用户名不能为空 密码必须相同，邮箱地址符合规则

        if($("#username").val()==""){

            alert("用户名不能为空");
            return ;
        }

        if($("#password").val()==""){

            alert("密码不能为空");
            return ;
        }
        if($("#repassword").val()==""){
            alert("校验密码不能为空");
            return ;
        }

        if($("#repassword").val()!=$("#password").val()){

            alert("两次输入密码必须一致");
            return ;
        }

        var reg=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;

        if(!reg.test($("#email").val())){

            alert("邮箱格式错误!");
            return ;
        }

        var json=JSON.stringify($("#form1").serializeObject());
        $.ajax({
            url:REG_URL,
            type:"POST",
            contentType:"application/json",//前端往后端传的数据格式
            data:json,
            statusCode:{
                200:function(){
                    window.location='login.html';
                },
                409:function(){
                    alert("注册失败！可能有重复记录！");
                }
            }
        });



    });

});