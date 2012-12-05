


<!---
Default
--->
<cfhttp url="http://127.0.0.1/rest/RestPreso/demoService2">
<cfdump var="#cfhttp#" label="Simple Result">
<p/>

<!---
Test JSON and XML
--->
<cfhttp url="http://127.0.0.1/rest/RestPreso/demoService2">
	<cfhttpparam type="header" name="Accept" value="application/json" />
</cfhttp>

<cfdump var="#cfhttp#" label="JSON Result">
<p/>

<cfhttp url="http://127.0.0.1/rest/RestPreso/demoService2">
	<cfhttpparam type="header" name="Accept" value="application/xml" />
</cfhttp>

<cfdump var="#cfhttp#" label="XML Result">
<p/>

<!---
I can work with xml or beer
--->
<cfhttp url="http://127.0.0.1/rest/RestPreso/demoService2">
	<cfhttpparam type="header" name="Accept" value="application/xml,text/beer" />
</cfhttp>

<cfdump var="#cfhttp#" label="Either/OR based">
<p/>

<!---
I can work with 3 different types of things with a different priority for each.
--->
<cfhttp url="http://127.0.0.1/rest/RestPreso/demoService2">
	<cfhttpparam type="header" name="Accept" value="text/xml;q=0,application/json;q=0.5,text/beer;q=0.9" />
</cfhttp>

<cfdump var="#cfhttp#" label="Prefer JSON">
<p/>

<!---
Do you produce beer?
--->
<cfhttp url="http://127.0.0.1/rest/RestPreso/demoService2">
	<cfhttpparam type="header" name="Accept" value="application/beer" />
</cfhttp>

<!--- note the format --->
<cfdump var="#cfhttp.fileContent.toString()#" label="Bad!">
<p/>
