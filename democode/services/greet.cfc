component rest="true" restPath="greetingService"  {

	remote string function sayHello() httpMethod="get" {
		return "Hello World";
	}

}