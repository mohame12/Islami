import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic/cubits/hadeth_cubit.dart';
import 'package:islamic/cubits/hadeth_state.dart';
import 'package:islamic/models/qoran_model.dart';
import 'package:islamic/widgets/qoran_list_item.dart';

class ElsouraView extends StatefulWidget {
   ElsouraView({super.key});
  static String id='ElsoraView';

  @override
  State<ElsouraView> createState() => _ElsouraViewState();
}

class _ElsouraViewState extends State<ElsouraView> {
  int indx=0;
  
  @override
  Widget build(BuildContext context) {
    QoranModel model=ModalRoute.of(context)?.settings.arguments as QoranModel;
    indx=model.index;
    // if(surav.isEmpty)
    //   {
    //     loadfiles(index: model.index);
    //   }
    return
      BlocBuilder<HadethCubit, HadethState>(
        bloc: HadethCubit.get(context)..loadfiles(index: indx),
  builder: (context, state) {
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
                  child: Text(model.soraName ,style: TextStyle(fontFamily: 'ElMessiri',fontSize: 25),),
                ),
                Divider(thickness: 1,color: Color(0xffB7935F),indent: 50,endIndent: 50,),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => QoranListItem(sura: '${HadethCubit.get(context).surav[index]}(${index+1})'),
                    itemCount: HadethCubit.get(context).surav.length,),
                )

              ],
            ),
          ),
        ),
      ),
    );
  },
);



  }


}


