import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic/cubits/hadeth_cubit.dart';
import 'package:islamic/cubits/hadeth_state.dart';
import 'package:islamic/models/ahadth_model.dart';
import 'package:islamic/views/ahadeth_view.dart';

import '../widgets/ahadec_list_item.dart';

class AhadecView extends StatelessWidget {
  const AhadecView({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<HadethCubit, HadethState>(
      bloc: HadethCubit.get(context)..hadethfun(),
  listener: (context, state) {
  },
  builder: (context, state) {


     if (state is Sucessdata)
     {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/ahadec_icon.png'),),

          Divider(color: Color(0xffB7935F),thickness: 3,),
          Text('الاحاديث',style: TextStyle(fontSize: 25,fontFamily: 'ElMessiri',fontWeight: FontWeight.bold),),
          Divider(color:Color(0xffB7935F),thickness: 3 ,),

          Expanded(
            child: ListView.builder(
                itemBuilder:(context,index)=> GestureDetector(
                    onTap: ()
                    {
                      Navigator.pushNamed(context, AhadethView.id,arguments: AhadthModel( index: index, hadethname: '${HadethCubit.get(context).hadethlist[index].split('\n').first}', body: HadethCubit.get(context).hadethlist));
                    },
                    child: AhadecLISTitem(ahadth: 'الحديث رقم ${index+1}',)),
              itemCount: HadethCubit.get(context).hadethlist.length-1,
            ),
          )

        ],
      ),
    );
     }else{
       return Center(child: CircularProgressIndicator());
     }

  },
);
  }
}


