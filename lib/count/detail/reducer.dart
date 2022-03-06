import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Reducer<DetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<DetailState>>{
      DetailAction.updateCount: _updateCount,
    },
  );
}

DetailState _updateCount(DetailState state, Action action) {
  final DetailState newState = state.clone();
  newState..count = action.payload;
  return newState;
}
