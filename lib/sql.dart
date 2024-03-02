import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class SQLDB{
  static Database? _db;
  Future<Database?> get db async{
    if(_db==null){
      _db=await initialdb();
      return _db;
    }else{
      return _db;
    }
  }
  var path;
  initialdb()async{
    var database=await getDatabasesPath();
    path=join(database,"Islamy.db");
    var mydb=await openDatabase(path,onCreate: create,version:1,onUpgrade: upgrade);
    print("database created");
    return mydb;
  }
  upgrade(Database db,int oldversion,int newversion)async{
    // db.rawUpdate("Alert")
    var rs=await db.rawUpdate("UPDATE 'Doaa' SET 'id'=1 WHERE 'id'=19");
    print(rs);
    print("------------ upgrade -----------");
  }
  create(Database db,int version)async{
    await db.execute('''
     CREATE TABLE 'Doaa'(
     'id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
     'doaa' TEXT,
     'num' INT)
     ''');
        inserttable();
    print("CREATE WAS DONE");

  }
  inserttable()async{
      await insert({"id":null,"doaa":"سبحان الله","num":0});
      await insert({"id":null,"doaa":"الحمدلله","num":0});
      await insert({"id":null,"doaa":"الله أكبر","num":0});
      await insert({"id":null,"doaa":"أستغفر الله","num":0});
      await insert({"id":null,"doaa":"لا حول ولا قوة إلا بالله","num":0});
      await insert({"id":null,"doaa":"لا إله إلا الله","num":0});
      print("Inserted WAS DONE");
  }
  insert(var values)async{
    Database? mydb=await db;
    // var res= await mydb?.rawInsert(sql);
    var res= await mydb?.insert('Doaa',values);
    print("Insert WAS DONE");
    return res;
  }
  read(String table)async{
    Database? mydb=await db;
    var res= await mydb?.query(table);
    print("readdata WAS DONE");
    return res;
  }
  select(String title)async{
    Database? mydb=await db;
    var res= await mydb?.rawQuery('SELECT num FROM Doaa WHERE doaa="$title"');
    print("Selected WAS DONE");
    return res;
  }
  selectsum()async{
    Database? mydb=await db;
    var res= await mydb?.rawQuery('SELECT SUM(num) FROM Doaa');
    print("Selected WAS DONE");
    return res;
  }selectcount(String sql)async{
    Database? mydb=await db;
    var res= await mydb?.rawQuery(sql);
    print("Selected WAS DONE");
    return res;
  }
  update(var value,var mywhere)async{
    Database? mydb=await db;
    var res= await mydb?.update('Doaa',value,where:mywhere );
    // var res= await mydb?.rawUpdate(sql);
    print("readdata WAS DONE");
    return res;
  } updateall()async{
    Database? mydb=await db;
    var res= await mydb?.rawUpdate("UPDATE Doaa SET num=0");
    // var res= await mydb?.rawUpdate(sql);
    print("update all WAS DONE");
    return res;
  }

  delete(String sql)async{
    Database? mydb=await db;
    var res= await mydb?.rawDelete(sql);
    print("DELETE WAS DONE");
    return res;
  }
  mydeletedatabase()async{
    var database=await getDatabasesPath();
    path=join(database,"untitle3.db");
    await deleteDatabase(path);
    print("database deleted");
  }
}