/**
 * Created by Administrator on 2017/6/3.
 */

var QUERYC_URL="http://localhost:8080/pet/queryc";

var REG_URL="http://localhost:8080/account/reg";
var lan=[
    {'id':'eng','name':'Ӣ��'},{'id':'chi','name':'����'}
    ];

$(function(){
    //��������

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

    $("#save").click(function(){//������save��ť
        //��У�� �û�������Ϊ�� ���������ͬ�������ַ���Ϲ���

        if($("#username").val()==""){

            alert("�û�������Ϊ��");
            return ;
        }

        if($("#password").val()==""){

            alert("���벻��Ϊ��");
            return ;
        }
        if($("#repassword").val()==""){
            alert("У�����벻��Ϊ��");
            return ;
        }

        if($("#repassword").val()!=$("#password").val()){

            alert("���������������һ��");
            return ;
        }

        var reg=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;

        if(!reg.test($("#email").val())){

            alert("�����ʽ����!");
            return ;
        }

        var json=JSON.stringify($("#form1").serializeObject());
        $.ajax({
            url:REG_URL,
            type:"POST",
            contentType:"application/json",//ǰ������˴������ݸ�ʽ
            data:json,
            statusCode:{
                200:function(){
                    window.location='login.html';
                },
                409:function(){
                    alert("ע��ʧ�ܣ��������ظ���¼��");
                }
            }
        });



    });

});