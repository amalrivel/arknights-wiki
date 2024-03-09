import 'package:arknights_wiki/models/operator/operator.dart';
import 'package:arknights_wiki/services/operator_services.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'operator_event.dart';
part 'operator_state.dart';

class OperatorBloc extends Bloc<OperatorEvent, OperatorState> {
  final OperatorServices _operatorServices;
  OperatorBloc(this._operatorServices) : super(OperatorInitial()) {
    on<LoadOperatorEvent>((event, emit) async {
      emit(OperatorLoadingState());
      try {
        final operator = await _operatorServices.getOperators();
        emit(OperatorLoadedState(operator));
      } catch (e) {
        emit(OperatorErrorState(e.toString()));
      }
    });
  }
}
