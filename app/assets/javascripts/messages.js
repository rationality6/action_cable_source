$(document).on("turbolinks:load", function () {
    $("#messages").scrollTop($("#messages")[0].scrollHeight);
    return $('#message_content').on('keydown', function (event) {
        if (event.keyCode === 13 && !event.shiftKey) {
            $('input').click();
            event.target.value = '';
            return event.preventDefault();
        }
    });
});