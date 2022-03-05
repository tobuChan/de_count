import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CountState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(title: Text('示例demo'),),
    body:Center(child: Text('${state.count}')),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        dispatch(CountActionCreator.onIncrease());
      },
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ),

  );
}
