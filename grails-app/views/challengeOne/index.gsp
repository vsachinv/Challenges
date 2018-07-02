<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body role="document">
<div class="jumbotron">
    <h1>Challenge #1</h1>
</div>

<g:uploadForm action="upload">
    <div class="row">
        <div class="col-sm-3">
            <div>
                <input type="file" class="custom-file-input" id="csvFile" name="csvFile" accept=".csv">
            </div>
        </div>

        <div class="col-sm-9"><button type="submit" class="btn btn-lg btn-primary">Submit</button></div>
    </div>
</g:uploadForm>
</body>
</html>