<cfcomponent rest="true" restPath="timeService">

	<cffunction name="returnTheAwesomeTime" access="remote" httpMethod="get" returnType="string">
		<cfreturn dateTimeFormat(now())>
	</cffunction>

</cfcomponent>
