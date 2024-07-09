import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/models/ahadth_model.dart';

class AhadethView extends StatefulWidget {
  const AhadethView({super.key});
  static const String id='ahadecview';

  @override
  State<AhadethView> createState() => _AhadethViewState();
}

class _AhadethViewState extends State<AhadethView> {
  String hadethname='name';
  int indx=0;
  List<String>?hadthcontant=[];
  List<String> h=[];
  List<String> n=[];
  @override
  Widget build(BuildContext context) {
    AhadthModel model=ModalRoute.of(context)?.settings.arguments as AhadthModel;
     hadethname=model.hadethname;
     indx=model.index;
    hadthcontant=model.body;
deletfristline();
print(h);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage('assets/images/bg3.png'),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back)),
              Spacer(flex: 1,),
              SizedBox(width: 25,),
              Text('اسلامي',style: TextStyle(fontFamily: 'ElMessiri',fontSize: 30),),
              Spacer(flex: 2),
            ],
          ),

        ),

        body: Padding(
          padding: const EdgeInsetsDirectional.only(top: 40,bottom: 98,start: 29,end: 29),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
            ),
            color: Colors.white.withOpacity(0.8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 39),
                  child: Text(model.hadethname,style: TextStyle(fontFamily: 'ElMessiri',fontSize: 25),),
                ),
                Divider(thickness: 1,color: Color(0xffB7935F),indent: 50,endIndent: 50,),

                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index)=>
                     Text(
                      h[index] ,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 20,),),
                    itemCount: h.length,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  deletfristline()
  {
     h=hadthcontant![indx].split('\n');
h.removeAt(0);
     setState(() {

     });
  }
}
