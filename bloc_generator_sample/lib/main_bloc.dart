import 'package:bloc/bloc.dart';
import 'package:bloc_builder/annotations.dart';

part 'main_bloc.g.dart';

class MainState {
  final int counter;

  MainState(this.counter);
}

@BuildBloc(MainState)
class MainBloc extends _$Bloc {

  @override
  MainState get initialState => MainState(0);

  Stream<MainState> _mapIncrementToState() async* {
    yield MainState(currentState.counter + 1);
  }

  Stream<MainState> _mapDecrementToState() async* {
    yield MainState(currentState.counter - 1);
  }

  Stream<MainState> _mapIncrementByToState(int value) async* {
    yield MainState(currentState.counter + value);
  }

}
