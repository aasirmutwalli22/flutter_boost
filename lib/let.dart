import 'package:flutter/material.dart';

typedef _Builder<T> = Widget Function(BuildContext, T);
class Let<T> extends StatelessWidget{
  final T let;
  final _Builder<T> builder;
  const Let({Key key, @required this.let, @required this.builder}) : super(key: key);
  @override Widget build(BuildContext context) => builder(context, let);
}