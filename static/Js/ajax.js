$(function () {

    $('#search').keyup(function () {
        if (!this.value.trim()) {
            $('#search-results').html('');
            return;
        }

        $.ajax({
            type: "POST",
            url: "/search",
            data: {
                'search_text': $('#search').val(),
                'csrfmiddlewaretoken': $("input[name=csrfmiddlewaretoken]").val()
            },
            success: searchSuccess,
            dataType: 'html'
        });
    });
});

function searchSuccess(data, textStatus, jqXHR) {
    $('#search-results').html(data);
}


$("#search").keyup(function () {
    $("ul").removeAttr("hidden");
});



$('#search').keyup(function () {
    if (!this.value.trim()) {
        $('#search-results').attr('hidden', 'true');
    }
});

$(document).ready(function (event) {
$(document).on('click', '#like', function (event) {
    event.preventDefault();
    var pk = $(this).attr('value');
    $.ajax({
      type: 'POST',
      url: '/likes',
      data: {
        'id': pk,
        'csrfmiddlewaretoken': $("input[name=csrfmiddlewaretoken]").val()
      },
      dataType: 'json',
      success: function (response) {
        $('#like-section').html(response['form'])
        console.log($('#like-section').html(response['form']))
      },
      error: function (rs, e) {
        console.log(rs.responseText);
      },
    });
});
});


$('.reply-btn').click(function(){
    $(this).parent().parent().next('.replied-comments').fadeToggle()
});



$('.comment-btn').click(function(){
    $(this).parent().next('.main-comments').fadeToggle()
});


$(document).on('submit','.comment-form', function(event){
    event.preventDefault();
    console.log($(this).serialize());
    $.ajax({
        type: 'POST',
        url: $(this).attr('action'),
        data: $(this).serialize(),
        dataType: 'json',
        success: function (response) {
            $('.main-comment-section').html(response['form']);
            $('textarea').val('');
            $('.reply-btn').click(function(){
                $(this).parent().parent().next('.replied-comments').fadeToggle();
                $('textarea').val('');
            });
            $('.comment-btn').click(function(){
                $(this).parent().next('.main-comments').fadeToggle();
                $('textarea').val('');
            });
        },
        error: function (rs, e){
            console.log(rs, responseText);
        },
    });
});


$(document).on('submit','.reply-form', function(event){
    event.preventDefault();
    console.log($(this).serialize());
    $.ajax({
        type: 'POST',
        url: $(this).attr('action'),
        data: $(this).serialize(),
        dataType: 'json',
        success: function (response){
            $('.main-comment-section').html(response['form']);
            $('textarea').val('');
            $('.reply-btn').click(function(){
                $(this).parent().parent().next('.replied-comments').fadeToggle();
                $('textarea').val('');
            });
            $('.comment-btn').click(function(){
                $(this).parent().next('.main-comments').fadeToggle();
                $('textarea').val('');
            });
        },
        error: function (rs, e){
            console.log(rs, responseText);
        },
    });
});


$(document).ready(function(){
    $('.messages').delay(5000).fadeOut();
});


$('#user-about').click(function(){
    $('#about-user').show();
    $('#wishlist').hide();
});

$('#wish-list').click(function(){
    $('#wishlist').show();
    $('#about-user').hide();
});
