// app/javascript/calc.js
$(document).ready(function () {
    $('#go-button').on('click', function (event) {
        event.preventDefault(); // Предотвращаем стандартное поведение кнопки

        var inputValue = $('#val').val();

        $.ajax({
            type: 'GET',
            url: '/calc/output',
            data: { val: inputValue },
            dataType: 'html',
            success: function (data) {
                console.log('Ajax request successful:', data);
                $('#results-container').html(data);
            },
            error: function (error) {
                console.log('Ajax request error:', error);
            }
        });
    });
});
