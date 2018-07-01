<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Challenges</title>
    <asset:stylesheet src="bootstrap-all.css"/>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:javascript src="bootstrap-all.js"/>
    <asset:javascript src="bootstrap/affix.js"/>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body role="document">
<div class="container">
    <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title">Sign In</div>

                <div style="float:right; font-size: 80%; position: relative; top:-10px">
                </div>
            </div>

            <div style="padding-top:30px" class="panel-body">

                <g:if test='${flash.message}'>
                    <div style="display:block" id="login-alert"
                         class="alert alert-danger col-sm-12">${flash.message}</div>
                </g:if>


                <form id="loginform" class="form-horizontal" role="form" action="${postUrl ?: '/login/authenticate'}"
                      method="POST">

                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="username" type="text" class="form-control" name="${usernameParameter ?: 'username'}"
                               value=""
                               placeholder="username">
                    </div>

                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="password" type="password" class="form-control"
                               name="${passwordParameter ?: 'password'}"
                               placeholder="password">
                    </div>


                    <div class="input-group">
                        <div class="checkbox">
                            <label>
                                <input id="remember_me" type="checkbox" name="${rememberMeParameter ?: 'remember-me'}"
                                       <g:if test='${hasCookie}'>checked="checked"</g:if>/> Remember me
                            </label>
                        </div>
                    </div>


                    <div style="margin-top:10px" class="form-group">
                        <!-- Button -->

                        <div class="col-sm-12 controls">
                            <button type="submit" id="submit" class="btn btn-lg btn-success">Login</button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
</body>
</html>