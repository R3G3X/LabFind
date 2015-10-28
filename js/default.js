/*
* @Author: Ed_Strickland
* @Date:   2015-10-22 08:45:08
* @Last Modified by:   Ed_Strickland
* @Last Modified time: 2015-10-29 00:48:06
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
    $("#change-save").click(function(){
        $.post("hello.jsp",
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

    $("#user-login").click(function(){
        $.post("momsg.php",{"uername":$("#username").val()},function(data){
            if(data==0){
                alert("4");
            }
            if(data==1){
                alert()
            }
        })
        $.post("momsg.php",{"password":$("#password").val()},function(data){
            if(data==0){
                alert("5");
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
