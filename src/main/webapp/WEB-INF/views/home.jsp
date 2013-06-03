<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <title>jQuery UI Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A preview of the jQuery UI Bootstrap theme">
    <meta name="author" content="Addy Osmani">

    <!-- Le styles -->
    <link href="<c:url value="/resources/ext/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/ext/bootstrap/css/bootstrap-responsive.min.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/resources/css/custom-theme/jquery-ui-1.10.0.custom.css"/>"
          rel="stylesheet"/>
    <link type="text/css" href="<c:url value="/resources/ext/font-aweseome/css/font-awesome.min.css"/>"
          rel="stylesheet"/>
    <!--[if IE 7]>
    <link rel="stylesheet" href="<c:url value="/resources/ext/font-aweseome/css/font-awesome-ie7.min.css"/>">
    <![endif]-->
    <!--[if lt IE 9]>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/custom-theme/jquery.ui.1.10.0.ie.css"/>"/>
    <![endif]-->
    <link href="<c:url value="/resources/ext/docs/css/docs.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/ext/google-code-prettify/css/prettify.css"/>" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <link href="<c:url value="/resources/css/common.css"/>" rel="stylesheet">

    <!-- Le fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144"
          href="<c:url value="/resources/ext/bootstrap/ico/apple-touch-icon-144-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="114x114"
          href="<c:url value="/resources/ext/bootstrap/ico/apple-touch-icon-114-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="72x72"
          href="<c:url value="/resources/ext/bootstrap/ico/apple-touch-icon-72-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed"
          href="<c:url value="/resources/ext/bootstrap/ico/apple-touch-icon-57-precomposed.png"/>">
    <link rel="shortcut icon" href="<c:url value="/resources/ext/bootstrap/ico/favicon.png"/>">

</head>
<body>
<div class="container">
    <div id="header"></div>
</div>
<div class="container-fluid">

    <div id="body"></div>

    <h1>Hello Security world!</h1>

    <h3>Bah!</h3>

    <!-- Populated by jQuery & links.jsp -->
    <div id="links"></div>

    <!-- This is my login form, not displayed by default. Populated by jQuery & login.jsp -->
    <div id="login" style="display: none;" title="Login Form"></div>


</div>


<!-- Placed at the end of the document so the pages load faster -->
<script data-main="/resources/js/app"
        src="<c:url value="/resources/ext/require/js/require-2.1.6.min.js"/>"></script>
</body>
</html>
