import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic/cubits/hadeth_cubit.dart';
import 'package:islamic/cubits/hadeth_state.dart';

class SebhaVeiw extends StatefulWidget {
  const SebhaVeiw({super.key});

  @override
  State<SebhaVeiw> createState() => _SebhaVeiwState();
}

class _SebhaVeiwState extends State<SebhaVeiw> {
  
  @override
  Widget build(BuildContext context) {
    double turns=0;
    return BlocBuilder<HadethCubit, HadethState>(
  builder: (context, state) {
    int index=HadethCubit.get(context).allalistindex;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: double.infinity,),
          SizedBox(height: 95,),
          Stack(
              clipBehavior: Clip.none,
              children:[
            Positioned(
                left: 100,
                bottom: 208,
                child: Image(image: AssetImage('assets/images/head of seb7a.png'))),
            AnimatedRotation(turns: turns,
            duration: Duration(milliseconds: 10),
            child: Image(image: AssetImage('assets/images/body of seb7a.png'))),

          ]),
          SizedBox(height: 43,),
          Text("عدد التسبيحات",style: TextStyle(fontFamily: 'ElMessiri',fontSize: 25),),
          SizedBox(height: 26,),
          Container(
            height: 81,
            width: 69,
            decoration: BoxDecoration(
              color: Color(0xffB7935F).withOpacity(0.7),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Center(child: Text('${HadethCubit.get(context).c}',style: TextStyle(fontFamily: 'ElMessiri',fontSize: 25),)),
          ),
          SizedBox(height: 22,),
          SizedBox(
            height: 51,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xffB7935F).withOpacity(0.8)),
                onPressed: (){
                HadethCubit.get(context).counter();
                turns+=0.01;
                },
                child:Text("${HadethCubit.get(context).allah[index]}",style: TextStyle(fontFamily: 'ElMessiri',fontSize: 25,color: Colors.white ),) ),
          )
        ],
      ),
    );
  },
);
  }
}
