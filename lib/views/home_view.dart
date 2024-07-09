import 'package:flutter/material.dart';
import 'package:islamic/nav_taps/ahadec_tap.dart';

import 'package:islamic/nav_taps/sebha_tap.dart';
import '../nav_taps/qoraan_tap.dart';
import '../nav_taps/radio_tap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String id='HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget>taps=[
    const RadioVeiw(),
    const SebhaVeiw(),
    const AhadecView(),
     QoraanVeiw(),
  ];
  int index=3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image:AssetImage('assets/images/bg3.png'),fit: BoxFit.fill,)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text(
            'اسلامي'
                ,style: TextStyle(
            fontFamily: 'ElMessiri',
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
          ),
        ),
      ),
        bottomNavigationBar:BottomNavigationBar(
          onTap: (val)
            {
              index=val;
              setState(() {
              });
            },
          currentIndex: index,
          selectedItemColor: Colors.black,
          iconSize: 35,
            type: BottomNavigationBarType.shifting,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            items: const [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),label:'الراديو',backgroundColor: Color(0xffB7935F) ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),label:'التسبيح',backgroundColor: Color(0xffB7935F) ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran-quran-svgrepo-com.png')),label:'الأحاديث' ,backgroundColor: Color(0xffB7935F)),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png'),),label: 'القرأن',backgroundColor: Color(0xffB7935F)),
            ]),


        body: taps[index],
            ),
    );
  }
}
