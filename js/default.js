/*
* @Author: Ed_Strickland
* @Date:   2015-10-22 08:45:08
* @Last Modified by:   Ed_Strickland
* @Last Modified time: 2015-10-27 00:46:54
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
        $.post("momsg.php",{"project-name":$("#project-name").val()},function(data){
            if(data==0){
                alert("1");
            }
        })
        $.post("momsg.php",{"founder-name":$("#founder-name").val()},function(data){
            if(data==0){
                alert("2");
            }
        })
        $.post("momsg.php",{"brief":$("#brief").val()},function(data){
            if(data==0){
                alert("3");
            }
        })
    })
    $("#user-login").click(function(){
        $.post("momsg.php",{"uername":$("#username").val()},function(data){
            if(data==0){
                alert("4");
            }
        })
        $.post("momsg.php",{"password":$("#password").val()},function(data){
            if(data==0){
                alert("5");
            }
        })
        $.post("momsg.php",{"phone_num":$("#phone_num").val()},function(data){
            if(data==0){
                alert("6");
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
