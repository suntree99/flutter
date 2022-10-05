import 'package:meta/meta.dart';

@immutable
abstract class CounterEvent {}

class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}
