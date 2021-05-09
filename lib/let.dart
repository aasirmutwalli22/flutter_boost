import 'package:flutter/widgets.dart';

class Let<T> extends StatelessWidget {
  final T let;
  final Widget Function(T) builder;
  const Let({required this.let, required this.builder});
  @override
  Widget build(_) => builder(let);
}
