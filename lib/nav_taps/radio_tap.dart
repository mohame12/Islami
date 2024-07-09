import 'package:flutter/material.dart';

class RadioVeiw extends StatelessWidget {
  const RadioVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/images/radio-image.png'),),
          SizedBox(height: 57),
          const Text('إذاعة القرآن الكريم',style: TextStyle(fontFamily: 'ElMessiri',fontSize: 25),),
          SizedBox(height: 57),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 1,),
              ImageIcon(AssetImage('assets/images/Icon metro-next.png'),color:Color(0xffB7935F)),
              Spacer(flex: 1,),
              ImageIcon(AssetImage('assets/images/Icon awesome-play.png'),color:Color(0xffB7935F),size: 36),
              Spacer(flex: 1,),
              ImageIcon(AssetImage('assets/images/Icon metro-nextr.png'),color:Color(0xffB7935F),size: 20,),
              Spacer(flex: 1,),
          ],)
        ],
      )
    );
  }
}
