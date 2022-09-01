part of 'cat_bloc.dart';

@immutable
abstract class CatState extends Equatable{
  const CatState();
}

class CatInitial extends CatState {

  @override
  List<Object?> get props => [];
}

class CatLoadedState extends CatState{
  final List<Fact> facts;

  CatLoadedState(this.facts);

  @override
  // TODO: implement props
  List<Object?> get props => [facts];
}
