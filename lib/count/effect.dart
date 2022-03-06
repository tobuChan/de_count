import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<CountState> buildEffect() {
  return combineEffects(<Object, Effect<CountState>>{
    CountAction.onIncrease: _onIncrease,
    CountAction.toDetail: _toDetail,
  });
}

void _onIncrease(Action action, Context<CountState> ctx) {
  int count = ctx.state.count + 1;
  ctx.dispatch(CountActionCreator.updateCount(count));
}

void _toDetail(Action action, Context<CountState> ctx) async {
  var result = await Navigator.of(ctx.context)
      .pushNamed("DetailPage", arguments: {"count": ctx.state.count});
  ctx.dispatch(CountActionCreator.updateCount((result as Map)["count"]));
}
