/**
 * Created with IntelliJ IDEA.
 * User: martin
 * Date: 5/31/13
 * Time: 20:21
 * To change this template use File | Settings | File Templates.
 */

requirejs.config({
    paths: {
        bootstrap: '../ext/bootstrap/js/bootstrap.min',
        docs: '../ext/docs/js/docs',
        prettify: '../ext/google-code-prettify/js/google-code-prettify/prettify',
        jquery: '../ext/jquery/js/jquery-1.9.0.min',
        jqueryui: '../ext/jquery-ui/js/jquery-ui-1.10.0.custom.min',
        app: './app'
    },
    packages : ['app', 'health-check', 'version-messages']
});

requirejs(['app/main']);