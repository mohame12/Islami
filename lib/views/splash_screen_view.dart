import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic/views/home_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String id='SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  int counter=10;
  Timer ?timer;
  @override
  void initState() {
    super.initState();
    timer=Timer.periodic(Duration(seconds: 1),(time){
      if(counter>1)
        {
          counter--;
          setState(() {
          });
        }else
          {
            timer?.cancel();
            Navigator.pushReplacementNamed(context, HomeScreen.id);
          }

    } );

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1,),
            Image(image: AssetImage('assets/images/logo.png'),),
            Spacer(flex: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFFFFFF),side: BorderSide(color: Colors.black12)),
                      onPressed: () {
                        timer?.cancel();
                        Navigator.pushReplacementNamed(context, HomeScreen.id); },
                  child: Text('تخطي$counter',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.4)),)),
                    ),


              ],
            )
          ],
        ),
      ),
    );
  }
}
