component rest="true" restPath="subService" {

	remote string function sayHello() httpMethod="get"  {
		return "<h1>Hello World</h1>";
	}

	remote string function sayHelloMorning() httpMethod="get" restPath="/morning"  {
		return "<h1>Good Morning!</h1>";
	}

	remote string function sayHelloEvening() httpMethod="get" restPath="/evening" {
		return "<h1>Good Evening</h1>";
	}

	remote string function sayHelloLate() httpMethod="get" restPath="/evening/late" {
		return "<h1>Go to bed!</h1>";
	}

}