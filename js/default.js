/*
* @Author: Ed_Strickland
* @Date:   2015-10-22 08:45:08
* @Last Modified by:   Ed_Strickland
* @Last Modified time: 2015-10-31 17:19:38
*/

$(document).ready(function(){
    $("#project-add > a").click(function(){
            // alert(" ");
            $("#page-add").css("display", "block")
    })
    $("#page-add > a").click(function(){
            // alert(" ");
            $("#page-add").css("display", "none")
    })

// LOGIN-CHECK
    $("#username").blur(function(){
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
    $("#password").blur(function(){
        if($("#password").val().length==0){
            $("#pass-check").html("<font color='red'>用户名不能为空</font>");
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
        $.post("hello.jsp",
                {"username":$("#username").val(),
                "password":$("#password").val()},
                function(data, status, xhr){
                    alert("成功登陆");
                })
        .error(function(data,status,e){
            if(data.status == 400){
                $("#check-status").html("<font color='red'>密码错误</font>");
            }
            else if(data.status == 401){
                $("#check-status").html("<font color='red'>用户名不存在</font>");
            }
        })
    })




















    $("#change-save").click(function(){
        $.post("hellof.jsp",
                {"project-name":$("#project-name").val(),
                "founder-name":$("#founder-name").val(),
                "brief":$("#brief").val()},
                function(data){
                    if (data==1){
                        alert("0");
                    }
                    else{
                        alert("0");
                    }
                })
    })

    $("#exit").click(function(){
            // alert(" ");
            $(".dropdown").addClass("hidden");
            $("#user-pic").addClass("hidden");
            $("#login").removeClass("hidden");
    })

})
