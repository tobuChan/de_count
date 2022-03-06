import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<DetailState> buildEffect() {
  return combineEffects(<Object, Effect<DetailState>>{
    DetailAction.onIncrease: _onIncrease,
    DetailAction.backFirst: _backFirst,
  });
}

void _onIncrease(Action action, Context<DetailState> ctx) {
  int count = ctx.state.count + 1;
  ctx.dispatch(DetailActionCreator.updateCount(count));
}

void _backFirst(Action action, Context<DetailState> ctx) {
  Navigator.pop(ctx.context, {"count": ctx.state.count});
}
