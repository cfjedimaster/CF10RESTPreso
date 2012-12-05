component rest="true" restPath="artService" {

   remote query function list() httpmethod="get" {
      var q = new com.adobe.coldfusion.query();
      q.setDatasource("cfartgallery");
      q.setSQL("select artid, artname from art order by artname asc");
      var results = q.execute().getResult();

      return results;
   }

   remote struct function detail(numeric id restArgSource="path") httpmethod="get" restPath="{id:[0-9]+}" {
      var q = new com.adobe.coldfusion.query();
      q.setDatasource("cfartgallery");
      q.setSQL("select artid, artname, largeimage, description, price from art where artid=:id");
      q.addParam(name="id",value="#arguments.id#",cfsqltype="cf_sql_integer");

      var results = q.execute().getResult();
      var item = {"id":results.artid, "name":results.artname, "image":results.largeimage, "description":results.description, "price":results.price};
      return item;
   }

   remote void function update(numeric id restArgSource="path", numeric price restArgSource="form") httpmethod="put" restPath="{id:[0-9]+}" {
      var q = new com.adobe.coldfusion.query();
      q.setDatasource("cfartgallery");
      q.setSQL("update art set price=:price where artid=:id");
      q.addParam(name="id",value="#arguments.id#",cfsqltype="cf_sql_integer");
      q.addParam(name="price",value="#arguments.price#",cfsqltype="cf_sql_numeric");

      q.execute().getResult();

   }

   remote string function delete(numeric id restArgSource="path") httpmethod="delete" restPath="{id:[0-9]+}" {
      var q = new com.adobe.coldfusion.query();
      q.setDatasource("cfartgallery");
      q.setSQL("delete from art where artid=:id");
      q.addParam(name="id",value="#arguments.id#",cfsqltype="cf_sql_integer");

      q.execute().getResult();
   }

   //Extra credit
   remote any function img(numeric id restArgSource="path") httpmethod="get" restPath="{id:[0-9]+}" produces="image/jpeg" {
      var q = new com.adobe.coldfusion.query();
      q.setDatasource("cfartgallery");
      q.setSQL("select largeimage from art where artid=:id");
      q.addParam(name="id",value="#arguments.id#",cfsqltype="cf_sql_integer");

      var results = q.execute().getResult();
      var image = results.largeimage;
      var imageFile = expandPath("/cfdocs/images/artgallery/"&image);
      var bits = fileReadBinary(imageFile);
      return bits;
   }

}