import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum DetailAction { updateCount, onIncrease, backFirst }

class DetailActionCreator {
  static Action onIncrease() {
    return const Action(DetailAction.onIncrease);
  }

  static Action updateCount(int count) {
    return Action(DetailAction.updateCount, payload: count);
  }

  static Action backFirst() {
    return const Action(DetailAction.backFirst);
  }
}
