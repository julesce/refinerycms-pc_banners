$(function() {
    $(document).ready(function() {
        $(".tree ul:first > li:first").addClass("branch_start");
        $('.tree  ul').find('li:last').addClass("branch_end");
        $('ul.tristate').tristate();

        $('.tree').delegate('.toggle','click', function(e) {
            e.preventDefault();

            var $li   = $(this).parents('li:first');
            var $icon = $li.find('.icon.toggle');
            var $nested = $li.find('.nested');

            if ($icon.hasClass('expanded')) {
                $icon.removeClass('expanded');
                $nested.slideUp();
            }
            else {
                $icon.addClass('expanded');
                $nested.slideDown();
            }

        });
    });
});
