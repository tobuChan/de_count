import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(
    DetailState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('DetailPage'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${state.count}'),
          SizedBox(height: 20),
          OutlinedButton(
              onPressed: () {
                dispatch(DetailActionCreator.onIncrease());
              },
              child: Text('Add')),
          OutlinedButton(
              onPressed: () {
                dispatch(DetailActionCreator.backFirst());
              },
              child: Text('back')),
        ],
      ),
    ),
  );
}
