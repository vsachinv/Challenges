<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Challenges</title>
    <asset:stylesheet src="bootstrap-all.css"/>
    <asset:stylesheet src="font-awesome-all.css"/>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:javascript src="bootstrap-all.js"/>
    <asset:javascript src="bootstrap/affix.js"/>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <g:layoutHead/>
</head>

<body role="document">
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Challenges</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">

            <ul class="nav navbar-nav">
                <li class="active"><g:link class="homeButton" action="index">Home</g:link></li>
                <li><a href="#challenge1">Challenge #1</a></li>
                <li><a href="#challenge2">Challenge #2</a></li>
                <li><a href="#challenge3">Challenge #3</a></li>
            </ul>
            <ul class="nav navbar-nav pull-right">
                <li class="dropdown" style="float: right">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false"><i class="fa fa-user fa-fw"></i><sec:loggedInUserInfo field="username"/> <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Profile</a></li>
                        <li>
                            <a href="#" id="logout">Logout</a>

                            <form action="/logout" name="logoutForm" method="post">
                            </form>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container theme-showcase" role="main">
    <g:layoutBody/>
</div>
<g:javascript>
    $("#logout").click(function () {
        $('form[name="logoutForm"]').submit();
    });
</g:javascript>
</body>
</html>
