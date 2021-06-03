import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


typedef LetWidgetBuilder<T> = Widget Function(T let);

/// uses
/// ```dart
/// class ExampleWidget extends StatelessWidget{
///   @override
///   Widget build(BuildContext context) => FutureBuilder(
///     builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) => Let(
///       let: snapshot.data as int,
///       builder: (data) => ListTile(
///         title: Text(data.toString()),
///       ),
///     ),
///     future: Future.value(10,),
///   );
/// }
/// ```
///
class Let<T> extends StatelessWidget {
  final T let;
  final LetWidgetBuilder<T> builder;
  const Let({required this.let, required this.builder});
  @override
  Widget build(_) => builder(let);
}