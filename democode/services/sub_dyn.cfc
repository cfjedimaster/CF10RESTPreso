component rest="true" restPath="catService" {

	remote string function main() httpMethod="get"  {
		return "Cats rule";
	}

	
	remote string function specificCatByName(string cat restArgSource="path") 
	httpMethod="get" restPath="{cat}" {
		return "You wanted this cat: #cat#";
	}

	remote string function specificCatById(numeric id restArgSource="path") 
	httpMethod="get" restPath="{id:[0-9]{1,4}}" {
		return "You wanted this cat id: #id#";
	}

	remote string function specificCatByNameAndWeight(string cat restArgSource="path",numeric weight restArgSource="path") 
			httpMethod="get" restPath="{cat}-{weight:[0-9]+}" {
		return "You wanted cat #cat# who weighs #weight# pounds.";
	}
	
}