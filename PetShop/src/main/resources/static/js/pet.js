/**
 * Created by Administrator on 2017/6/13.
 */



var PET_PRODUCT_URL="http://localhost:8080/pet/queryp/";

var PET_ITEMS_URL="http://localhost:8080/pet/queryis/";

var PET_ITEM_URL="http://localhost:8080/pet/queryi/";

$(function(){
    var t=location.href;//ȡ�������ַ//http://localhost:8080/shop/product.html?cate=FISH
    var i=t.lastIndexOf("?");
    var path=t.substring(i+1,t.length);
    var id=path.split("=")[1];


    var j=t.lastIndexOf("/");
    var k=t.lastIndexOf(".");
    var path1=t.substring(j+1,k);//������ʵ����ĸ�htmlҳ��


    //alert(path1);
    //�ֽ�����ĸ�ҳ ŶҲ
    //product��items item ִ�е�ajax��һ����������Ҫ�ֽ�
    switch (path1){
        case "product":
            queryProByCate(id);
            break;
        case "items":
            queryItemsByPro(id);
            break;
        case "item":
            queryItemByItems(id);
            break;
        default :
            break;

    }




});
function  queryItemByItems(id){//����item���ĸ�id�ţ�����Ҫ��item�ľ�����Ϣ����ͼƬ��
    $.ajax({
        url:PET_ITEM_URL+id,
        type:"GET",
        dataType:"json",
        statusCode:{
            200:function(data){

                 $("#itemid").html(data.itemid);

                 $("#photo").attr("src","../images/"+data.product.pic);

                 $("#descn").html(data.product.descn);

                 $("#price").html(data.listprice);

            }

        }


    });
}
function queryItemsByPro(id) {//ͨ����Ʒid����ѯitems,id�����Ʒid

    $.ajax({
        url:PET_ITEMS_URL+id,
        type:"GET",
        dataType:"json",
        statusCode:{
            200:function(data){
                $(data).each(function(index){
                    var i=$("#list>tbody>tr:last").attr("id");

                    i++;
                    var str="<tr bgcolor='#FFFF88' id='"+i+"'>"+
                            "<td><a href='item.html?itemid="+data[index].itemid+"'>"+data[index].itemid+"</a></td>"+
                            "<td>"+data[index].product.productid+"</td>"+
                             "<td>"+data[index].product.name+"</td>"+
                             "<td>"+data[index].listprice+"</td>"+
                             "<td>"+data[index].product.descn+"&nbsp;&nbsp;"+data[index].attr1+"</td>"+
                            "</tr>"


                    $("#list").append(str);


                });
            }

        }


    });

}


function queryProByCate(id){//ͨ���������࣬��ѯ��Ʒ,id��������
    $.ajax({
        url:PET_PRODUCT_URL+id,
        type:"GET",
        dataType:"json",
        statusCode:{
            200:function(data){
               // alert(data);//vue react angular jquery [html js css=BootStrap]
                //��̬���<tr>,Ҳ��������
                $(data).each(function(i){
                    var id=$("#list>tbody>tr:last").attr("id");
                    id++;

                    var str="<tr bgcolor='#FFFF88' id='"+id+"'>"+
                    "<td><a href='items.html?pid="+data[i].productid+"'>"+
                        data[i].productid+
                    "</a></td>"+
                    "<td>"+
                        data[i].name+
                    "</td>"+
                    "</tr>"
                    $("#list").append(str);
                });


            }
        }

    });
}