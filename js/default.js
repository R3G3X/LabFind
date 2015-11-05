/*
* @Author: Ed_Strickland
* @Date:   2015-10-22 08:45:08
* @Last Modified by:   Ed_Strickland
* @Last Modified time: 2015-11-06 02:20:15
*/

$(document).ready(function(){
    $("#user-login").attr("disabled",true);
    $("#project-add > a").click(function(){
            // alert(" ");
            $("#page-add").css("display", "block")
    })
    $("#page-add > a").click(function(){
            // alert(" ");
            $("#page-add").css("display", "none")
    })

// LOGIN-CHECK
    $("#username").on('input',function(){
        if($("#username").val().length==0){
            $("#user-check").html("<font color='red'>用户名不能为空</font>");
            $("#user-login").attr("disabled",true);
        }
        else{
            $("#user-check").html("");
            if($("#password").val().length!=0){
                $("#user-login").removeAttr("disabled");
            }
        }
    })
    $("#password").on('input',function(){
        if($("#password").val().length==0){
            $("#pass-check").html("<font color='red'>密码不能为空</font>");
            $("#user-login").attr("disabled",true);
        }
        else{
            $("#pass-check").html("");
            if($("#username").val().length!=0){
                $("#user-login").removeAttr("disabled");
            }
        }
    })

// LOGIN-POST
    $("#user-login").click(function(){
        $.post("login.jsp",
                {"username":$("#username").val(),
                "password":$("#password").val()},
                function(data, status, xhr){
                    alert("成功登陆");
                    $("#check-status").html("");
                    $("#login").addClass("hidden");
                    $(".dropdown").removeClass("hidden");
                    $("#user-pic").removeClass("hidden");
                    $.cookie("userid",$("#username").val(),{expire:7,path:"/"});
                    $("#password").val("");
                    $("#username").val("");
                    loginId();
                })
        .error(function(data,status,e){
            alert("用户名或密码错误！");
            if(data.status == 400){
                $("#check-status").html("<font color='red'>密码错误</font>");
            }
            else if(data.status == 401){
                $("#check-status").html("<font color='red'>用户名不存在</font>");
            }
        })
    })

    function loginId(){
        var userid=$.cookie("userid");
    }


    /*$("#change-save").click(function(){

                function(data){
                    if (data==1){
                        alert("0");
                    }$.post("hellof.jsp",
                {"project-name":$("#project-name").val(),
                "founder-name":$("#founder-name").val(),
                "brief":$("#brief").val()},
                    else{
                        alert("0");
                    }
                })
    })*/

    $("#exit").click(function(){
            // alert(" ");
            $(".dropdown").addClass("hidden");
            $("#user-pic").addClass("hidden");
            $("#login").removeClass("hidden");
            $.cookie("userid","");
    })

    $
})
