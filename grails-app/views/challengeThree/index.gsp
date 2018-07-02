<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body role="document">
<div class="jumbotron">
    <h1>Challenge #3</h1>
</div>

<div class="page-header">
    <h1>Get All Phone Numbers</h1>

    <div>The following is a sample HTTP GET request and response.</div>
</div>

<div class="well">
    <p>GET /api/phoneNumbers(.json/.xml) HTTP/1.1<br/>
        Host: localhost:8080</p>
</div>

<div class="well">
    <textarea readonly="readonly" rows="15" cols="50">
    <?xml version="1.0" encoding="UTF-8"?>
        <list>
            <phoneNumber id="1">
                <isActive>false</isActive>
                <number>0123456789</number>
                <customer id="1"/>
            </phoneNumber>
            <phoneNumber id="2">
                <isActive>true</isActive>
                <number>1124456789</number>
                <customer id="1"/>
            </phoneNumber>
        </list>
    </textarea>
</div>

<div class="page-header">
    <h1>Get Customer Phone Numbers</h1>

    <div>The following is a sample HTTP GET request and response. The customers_id placeholder shown need to be replaced with actual value.</div>
</div>

<div class="well">
    <p>GET /api/customers/{customers_id}/phoneNumbers(.json/.xml) HTTP/1.1<br/>
        Host: localhost:8080</p>
</div>

<div class="well">
    <textarea readonly="readonly" rows="15" cols="50">
    <?xml version="1.0" encoding="UTF-8"?>
        <set>
            <phoneNumber id="3">
                <isActive>false</isActive>
                <number>9123456789</number>
                <customer id="1"/>
            </phoneNumber>
            <phoneNumber id="1">
                <isActive>false</isActive>
                <number>0123456789</number>
                <customer id="1"/>
            </phoneNumber>
        </set>
    </textarea>
</div>

<div class="page-header">
    <h1>Activate Phone Number</h1>

    <div>The following is a sample HTTP PUT request and response. The phoneNumber_id placeholder shown need to be replaced with actual value.</div>
</div>

<div class="well">
    <p>PUT /api/phoneNumbers/{phoneNumber_id}(.json/.xml) HTTP/1.1
    Host: localhost:8080
        <br/>
        Content-Length: length

    <pre>
        {
        "isActive":true
        }
    </pre>
</p>
</div>

<div class="well">
    <textarea readonly="readonly" rows="10" cols="50">
    <?xml version="1.0" encoding="UTF-8"?>
        <phoneNumber id="1">
            <isActive>true</isActive>
            <number>0123456789</number>
            <customer id="1"/>
        </phoneNumber>
    </textarea>
</div>

</body>
</html>