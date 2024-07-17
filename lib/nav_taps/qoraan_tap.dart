import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic/cubits/hadeth_cubit.dart';
import 'package:islamic/cubits/hadeth_state.dart';
import 'package:islamic/models/qoran_model.dart';
import 'package:islamic/views/elsoura_view.dart';
import 'package:islamic/widgets/item_qoran_list.dart';

class QoraanVeiw extends StatelessWidget {
  static const String id='Qoraan_tap';
   QoraanVeiw({super.key});



     List<String>suras_ar=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HadethCubit, HadethState>(
      bloc: HadethCubit.get(context)..aya(),
  buildWhen: (previous, current) => current is AyaSuccessdata,
  listener: (context, state) {
  },
  builder: (context, state) {
    var cubit=HadethCubit.get(context);
    var h=cubit.ayas;
    if(state is AyaSuccessdata)
      {
        return Scaffold(
            backgroundColor: Colors.transparent,
            body:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(image: AssetImage('assets/images/Fanos.png')),

                Expanded(
                  child:
                  Stack(
                    clipBehavior: Clip.none,
                    children: [

                        Column(
                        children: [
                          const Divider(
                            thickness: 3,
                            color: Color(0xffB7935F),
                          ),
                          const Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(flex: 1,),
                              Text('عدد الأيات', style: TextStyle(
                                  fontFamily: 'ElMessiri', fontSize: 25),),
                              Spacer(flex: 1,),
                              Text('اسم السورة', style: TextStyle(
                                  fontFamily: 'ElMessiri', fontSize: 25),),
                              Spacer(flex: 1,)

                            ],
                          ),
                          const Divider(
                            thickness: 3,
                            color: Color(0xffB7935F),
                          ),
                          Expanded(
                            child: ListView.builder(
                                physics: const BouncingScrollPhysics(),

                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(context, ElsouraView.id,
                                              arguments: QoranModel(
                                                  soraName: suras_ar[index],
                                                  index: index));
                                        },
                                        child: ItemQoranList(soraName: suras_ar[index],
                                          ayanums: '${h[index]}',)),
                                itemCount:114 ),
                          )
                        ],
                      ),
                      const Center(child: VerticalDivider(color: Color(0xffB7935F),width: 3,thickness: 3,indent: 8,))





                  ]),
                )




              ],
            )
        );
      }
    else{
      return const Center(child: CircularProgressIndicator(color: Colors.orange,));
    }
  },
);
  }
}
