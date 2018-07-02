<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body role="document">
<div class="jumbotron">
    <h1>Challenge #2</h1>
</div>

<g:form name="conversionForm">
    <div class="row">
        <div class="col-sm-3 ">
            <label class="pull-right" for="property">Temperature Conversion:</label>
        </div>

        <div class="col-sm-3">
            <div class="row">
                <div class="col-sm-8">
                    <input type="number" name="value" class="pull-right" min="0" value="0" required="required"
                           id="value">
                </div>

                <div class="col-sm-2"><g:select name="property" from="['Celsius', 'Fahrenheit']"/></div>
            </div>
        </div>

        <div class="col-sm-4">
            <button type="button" class="btn btn-xs btn-primary" id="convertTemp">Convert</button>
        </div>
    </div>
    <br/>
</g:form>
<br/>

<div>
    <div class="row">
        <div class="col-sm-3 ">
            <h3 class="pull-right">Result:</h3>
        </div>
    </div>

    <div id="result" style="display: none">
        <div class="row">
            <div class="col-sm-2 ">&nbsp;</div>

            <div class="col-sm-2">Celsius</div>

            <div class="col-sm-2" id="celsius"></div>
        </div>

        <div class="row">
            <div class="col-sm-2 ">&nbsp;</div>

            <div class="col-sm-2">Fahrenheit</div>

            <div id="fahrenheit" class="col-sm-2"></div>
        </div>
    </div>

    <div id="resultLoader" class="row" style="display: none">
        <div class="col-sm-3 ">
            <i class="fa fa-spinner fa-spin pull-right"></i>
        </div>
    </div>

</div>
<g:javascript>
  $(function() {
      var conversion = new Conversion("${createLink(action: 'convert')}", $("#conversionForm"));
        $('#convertTemp').on('click',function () {
        conversion.getConversionResult();
        }
        );
  })  ;
</g:javascript>
<asset:javascript src="challengeTwo.js"/>
</body>
</html>