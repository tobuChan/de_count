import 'package:fish_redux/fish_redux.dart';

class DetailState implements Cloneable<DetailState> {
  int count = 0;

  @override
  DetailState clone() {
    return DetailState()..count = count;
  }
}

DetailState initState(Map<String, dynamic> args) {
  return DetailState()..count = args['count'];
}
