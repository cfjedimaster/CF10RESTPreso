component rest="true" restPath="customService" {

	variables.data = {"name":"Ray","age":39,likes:["star wars","beer"]};

	remote struct function sayHelloMorning() httpMethod="get" restPath="/normal"  {
		return variables.data;
	}

	remote void function sayHelloEvening() httpMethod="get" restPath="/custom" {
		var result = {};
			result.status=201;

			result.content = "<person><name>#variables.data.name#</name><age>#variables.data.age#</age><likes>";
			for(var i=1; i<arrayLen(variables.data.likes); i++) {
				result.content &= "<like>#variables.data.likes[i]#</like>";
			}
			result.content &= "</likes></person>";

			//doesn't seem to work well 
			//result.headers["content-type"] = "application/xml";
			restSetResponse(result);

	}


}