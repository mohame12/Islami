import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic/cubits/hadeth_state.dart';

class HadethCubit extends Cubit<HadethState>
{
  HadethCubit():super(Inisitial());
  static HadethCubit get(context)=>BlocProvider.of(context);

  int c=0;
  List<String> allah=['سبحان الله','الحمدالله','لااله الا الله','الله واكبر'];
  int allalistindex=0;


  List<String>  hadethlist=[];

  Future<void> hadethfun()
  async {
    emit(Loadingdata());
    String val=await rootBundle.loadString('assets/ahadeth/ahadeth.txt');
      hadethlist=val.split("#");
      emit(Sucessdata(hadethlist: hadethlist));

  }


  counter()
  {
    if(c==32)
      {
        allalistindex=(allalistindex+1)%4;
        c=1;
        emit(CounterListState());
      }
    else
      {
        c++;
      }
    emit(CounterState());
  }

  List<int>ayalist=[];
  List<String>h=[];
  aya()
  {


    for(int i=0;i<=113;i++)
      {
        rootBundle.loadString('assets/qoran/${i+1}.txt').then((val){
          h=val.split('\n');
          ayalist.add(h.length);
          emit(AyaLoadingdata());
        });

        emit(AyaSuccessdata());
      }

  }


  List<String> surav=[];
  Future<void> loadfiles({required int index})
  async {
    String sura=await rootBundle.loadString('assets/qoran/${index+1}.txt');
    surav=sura.split('\n');
    emit(HadethSucessdata());


  }

}