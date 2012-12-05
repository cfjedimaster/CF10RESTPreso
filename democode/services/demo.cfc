component rest="true" restPath="demoService" {

	remote string function sayHello() httpMethod="get" {
		return "Hello World (You really get me...)";
	}

	remote string function sayHelloViaPost() httpMethod="post" {
		return "Wow, you ROCKED that form post!";
	}
}