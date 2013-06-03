/**
 * Created with IntelliJ IDEA.
 * User: martin
 * Date: 5/31/13
 * Time: 22:06
 * To change this template use File | Settings | File Templates.
 */
/**
 * Created with IntelliJ IDEA.
 * User: martin
 * Date: 5/31/13
 * Time: 19:38
 * To change this template use File | Settings | File Templates.
 */

require(
    [
        'jquery',
        'bootstrap',
        'jqueryui',
        'app/login'
    ],
    function ($, bootstrap, ui, login) {



        $(function () {
            // Initialize dialog window


            $(document).on('click', '#app-login-btn', function () {
                console.log('Trying to log in...');
                login.performLogin();
            });

            /*
            $("#login").dialog({
                autoOpen: false,
                modal: true,
                position: 'center',
                resizable: false,
                width: 500,
                open: function () {
                    $("#form form button").click(function () {
                        login.performLogin($("#form form"));
                    });
                    $('#form form input, #form form button').keypress(function (e) {
                        if (e.which == 13) {
                            login.performLogin($("#form form"));
                        }
                    });
                }
            });
            */

            // Load links
            login.loadHeader();
            //loadLinks();
        });
    });