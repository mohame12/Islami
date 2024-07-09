abstract class HadethState{}
class Inisitial extends HadethState{}
class Loadingdata extends HadethState{}
class Sucessdata extends HadethState{
  final List<String>hadethlist;
  Sucessdata({required this.hadethlist});
}
class Failuerdata extends HadethState{}
class ReloadScreen extends HadethState{}


class CounterState extends HadethState{}
class CounterListState extends HadethState{}


class HadethSucessdata extends HadethState{}

class AyaLoadingdata extends HadethState{}
class AyaSuccessdata extends HadethState{}