import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic/cubits/hadeth_cubit.dart';
import 'package:islamic/views/ahadeth_view.dart';
import 'package:islamic/views/elsoura_view.dart';
import 'package:islamic/views/home_view.dart';
import 'package:islamic/views/splash_screen_view.dart';

import 'cubits/bloc_observer.dart';
void main()
{
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (BuildContext context)=> HadethCubit() ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:SplashScreen.id ,
        routes:{
          HomeScreen.id:(context)=>const HomeScreen(),
          SplashScreen.id:(context)=>const SplashScreen(),
          ElsouraView.id:(context)=> ElsouraView(),
          AhadethView.id:(context)=>AhadethView(),
        },
      ),
    );
  }
}
