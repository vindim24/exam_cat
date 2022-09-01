part of 'cat_bloc.dart';

@immutable
abstract class CatEvent {}


class HistroyFactsEvent extends CatEvent{
  final String text;
  final String creationAt;

  HistroyFactsEvent(this.text, this.creationAt);

  @override
  List<Object> get props => [text, creationAt];
}
