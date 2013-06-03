/**
 * Created with IntelliJ IDEA.
 * User: martin
 * Date: 6/1/13
 * Time: 09:34
 * To change this template use File | Settings | File Templates.
 */

define(
    'app/login',

    [
        'jquery',
        'bootstrap',
        'jqueryui',
        'exports'
    ],

    function ($, bootstrap, ui, exports) {

        exports.loadHeader = function () {
            console.log('Loading header...');
            var $header = $('#header');
            $header.load('/partials/header/header', function (responseText, textStatus, xhr) {
                if (xhr.status == 200) {
                    console.log('Header loaded successfully...');
                    loadLogin();
                } else {
                    console.log('Failed to load header...');
                }
            });
        };

        function loadLogin() {
            console.log('Loading login partial...');
            var $container = $('#app-login-logout');
            $container.empty();
            $container.load('/partials/header/login', function (responseText, textStatus, xhr) {
                if (xhr.status == 200) {
                    console.log('Loaded login partial...');
                } else {
                    console.log('Failed to load login partial...');
                }
            });
        }

        function loadLogout() {
            var $container = $('#app-login-logout');
            $container.empty();
            $container.load(
                '/partials/header/logout',
                function (responseText, textStatus, xhr) {
                });
        }

        exports.performLogin = function () {
            var $form = $('#app-login-logout').find('form');

            $.post(
                '/login',
                $form.serialize(),
                function (data, textStatus, xhr) {
                    if (xhr.status == 200) {
                        console.log('Login successful!');
                        loadLogout();
                    } else {
                        console.log('Login failed!');
                    }
                }
            )
        };

        function loadLinks() {
            var links = $("#links");
            links.load(
                '/partials/links',
                function (responseText, textStatus, xhr) {
                    if (xhr.status == 200) {
                        $("#ajaxLogin").click(function () {
                            loadLogin();
                        });
                    } else {
                        links.html('<h4 style="color: #F00">Could not load URL "/links"</h4>');
                        links.show();
                    }
                });
        }

        /*
         function loadLogin() {
         $("#login").load(
         '/login',
         function (responseText, textStatus, xhr) {
         if (xhr.status == 200) {
         $("#login").dialog('open');
         } else {
         $("#login").html('<h4 style="color: #F00">Could not load URL "/login"</h4>');
         }
         });
         }*/

        function performLogin(form) {
            form.find(".message").hide();
            form.find(".error").hide();
            console.log(form.serialize());
            $.post(
                '/login',
                form.serialize(),
                function (data, textStatus) {
                    if (data.status) {
                        $("#login").dialog('close');
                        loadLinks();
                    } else {
                        var err = form.find(".error");
                        err.html("Login Failed [" + data.error + "]");
                        err.show();
                    }
                }, "json");
        }
    });