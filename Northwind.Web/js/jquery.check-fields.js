(function ($) {
    $.fn.checkFields = function () {

        var isFilled = true;

        this.each(function () {
            var idName = $(this).attr('id'),
                $thisElement = $(this),
                $messageElement = $('#' + idName + '-message'),
                errorForegroundColor = '#cc0000',
                errorBackgroundColor = '#feecec',
                normalForegroundColor = '#000000',
                normalBackgroundColor = '#ffffff';

            if ($thisElement.val().length === 0) {
                isFilled = false;
                $messageElement.html('&laquo; Required').css('color', errorForegroundColor);
                $thisElement.css('background-color', errorBackgroundColor);
            } else {
                $messageElement.html('').css('color', normalForegroundColor);
                $thisElement.css('background-color', normalBackgroundColor);
            }
        });

        return isFilled;
    };
})(jQuery);