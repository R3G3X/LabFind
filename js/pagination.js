/*
* @Author: Ed_Strickland
* @Date:   2015-11-13 08:33:51
* @Last Modified by:   Ed_Strickland
* @Last Modified time: 2015-11-13 11:44:46
*/

$(document).ready(function(){
    var numPerPage = 5;
    var numItem = $("#project-content").children().size();
    var numPage = Math.ceil(numItem / numPerPage);
    $("#currentPage").val(0);
    $("#numPerPage").val(numPerPage);
    var navHtml = '<a class="previous_link" href="javascript:prev();">Prev</a>';
    var currentLink = 0;
    while (numPage > currentLink){
        navHtml += '<a class="pageLink" href="javascript:goToPage('+currentLink+');" longdesc="'+currentLink+'">'+(currentLink + 1)+'</a>';
        currentLink ++;
    }
    navHtml += '<a class="next_link" href="javascript:next();">Next</a>';
    $("#pagination").html(navHtml);
    $("#pagination .pageLink:first").addClass("active");
    $("#project-content").children().css("display","none");
    $("#project-content").children().slice(0,numPerPage).css("display","block");
});




function goToPage(pageNum){
    var numPerPage = parseInt($("#numPerPage").val());
    startPage = pageNum * numPerPage;
    endPage = startPage + numPerPage;
    $("#project-content").children().css("display","none").slice(startPage, endPage).css("display", "block");
    $('.pageLink[longdesc=' + pageNum +']').addClass('active').siblings('.active').removeClass('active');
    $("#currentPage").val(pageNum);
}

function prev(){
    newPage = parseInt($("#currentPage").val()) - 1;
    if($(".active").prev(".pageLink").length == true){
        goToPage(newPage);
    }
}

function next(){
    newPage = parseInt($("#currentPage").val()) - 1;
    if($(".active").next(".pageLink").length == true){
        goToPage(newPage);
    }
}
