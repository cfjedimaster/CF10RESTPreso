component rest="true" restPath="demoService2" {

	remote string function sayHello() httpMethod="get" produces="text/html" {
		return "<h1>Hello World (You really get me...)</h1>";
	}

	remote struct function sayHelloJSON() httpMethod="get" produces="application/json" {
		return {"message":"Hello World (You really get me...)","generated":now()};
	}

	remote array function sayHelloXML() httpMethod="get" produces="application/xml" {
		return ["Hello World (You really get me...)"];
	}

}