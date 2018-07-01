<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>

<body>
<div class="jumbotron">
    <h1>Coding  Challenges</h1>
</div>

<div class="page-header">
    <h1>Challenge #1</h1>
</div>

<p>
    Create an application that allows the uploading of a file. Once the file is loaded, the application must validate and parse each line of file information (plaintext) and then upload the information to the database. The file structure is as follows:
</p>

<p>
    x, y, z
</p>

<p>
    - x is the username id of a user. Its length is 10 characters. They are just numbers, and can have zeros on the left.<br/>
    - y the amount of coins associated with the user x. must accept only natural numbers.<br/>
    - z is the user name x.<br/>
</p>

<p>
    The three fields are mandatory and can not be blank. If you find a wrong value when making the validation of each line, stop the process and if the database is modified, returning it to its initial state. Warn the user which line had an error.

</p>

<div class="page-header">
    <h1>Challenge #2</h1>
</div>

<p>
    Using this webservice (https://www.q88.com/WS/Q88WSInternal.asmx?op=ConvertTemperature), make a web calculator to do conversions of temperature. Preferably the results should be displayed asynchronously.
</p>

<div class="page-header">
    <h1>Challenge #3</h1>
</div>

<p>
    Lets assume we are an online marketing company. We got some new requirment to capture phone numbers of our customers every customer can have many phone numbers (1 customer : N phone numbers) and we need following 3 APIs from backend team:
</p>

<p>
    - Get all phone numbers<br/>

    - Get all phone numbers of a single customer<br/>

    - Activate a phone number<br/>
</p>

<p>
    Note, provide documentation for frontend team so that they can implement implement your api in frontend.
</p>
</body>
</html>
