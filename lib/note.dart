import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:xxxxxxxxxxxx/sebha.dart';
import 'package:xxxxxxxxxxxx/sql.dart';
class note extends StatefulWidget {
   var sum;
  // note({required this.sum});
  note({super.key, required this.sum});

  @override
  State<note> createState() => _noteState();
}

class _noteState extends State<note> {

  @override
  SQLDB sql=SQLDB();
  List doaa=[];
   readdata()async{
     var res=await sql.read('Doaa');
      doaa.addAll(res);
      if(this.mounted){
        setState(() { });
      }
   }
   restart()async{
     var res=await sql.updateall();
     if(this.mounted){
       setState(() {
        widget.sum=0;
       });
     }
     print(res);
   }
   var sum=0;
  selectAll()async{
    var res=await sql.selectsum();
    var y=res.toList().first;
    for (final e in y.entries) {
      setState(() {
        sum=e.value;
        widget.sum=(e.value);
      });
    }
    print(sum);
    print(res);
    return sum;
  }
  @override
  void initState() {
    // TODO: implement initState

    readdata();
    selectAll();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: Color(0xFF383124),
          appBar: AppBar(
            leading: IconButton(onPressed: (){
              restart();Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => note(sum: widget.sum),));
            }, icon: Icon(Icons.refresh,size:30,)),
            actions: [IconButton(onPressed: (){
              Navigator.of(context).pushNamed("sebha");
              }, icon: Icon(Icons.arrow_forward,size:30,))],
            automaticallyImplyLeading: false,
            title: Text("الارشيف",style: TextStyle(fontSize: 28),),centerTitle: true,),
          body: Column(children: [
            ListView.builder(itemCount:doaa.length ,shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.redAccent; //<-- SEE HERE
                              return null; // Defer to the widget's default.
                            },
                          ),
                            onTap:(){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => sebha(title: doaa[i]['doaa']),));
                          },
                            child: Container( decoration: BoxDecoration(color:Colors.orange,borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(doaa[i]['doaa'],style:TextStyle(fontSize: 30,fontFamily: "Amiri") ,),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(doaa[i]['num'].toString(),style: TextStyle(fontSize:30,color: Color(0xFF383124),fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ],
                    );}
            ), Expanded(
              child: Container(
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  child: Text('${sum}',
                    style: TextStyle(color: Colors.white, fontSize:50,fontFamily:"Amiri" ),
                  )),
            ),
          ])
      ),
    );
  }
}
