

<cfhttp url="http://127.0.0.1/rest/RestPreso/demoService">
<cfdump var="#cfhttp#" label="Get Result">

<cfhttp url="http://127.0.0.1/rest/RestPreso/demoService" method="post">
	<!--- Need to have at least one form field --->
	<cfhttpparam type="formfield" name="beer" value="isGood">
</cfhttp>

<cfdump var="#cfhttp#" label="Post Result">

<cfhttp url="http://127.0.0.1/rest/RestPreso/demoService" method="options">
<cfdump var="#cfhttp#" label="Options Result">
