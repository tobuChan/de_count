import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CountAction { onIncrease,updateCount }

class CountActionCreator {
  static Action onIncrease() {
    return const Action(CountAction.onIncrease);
  }
  static Action updateCount(int count) {
    return  Action(CountAction.updateCount,payload: count);
  }
}
