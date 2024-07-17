import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('T H E M E S',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: ()
            {
              showModalBottomSheet(context: context, builder: (context) =>
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height*0.9,
                  width: double.infinity,
                ),);
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Light',style: TextStyle(fontSize: 20),),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text('L A N G U A G E',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Arabic',style: TextStyle(fontSize: 20),),
            ),
          )
        ],
      ),
    );
  }
}
