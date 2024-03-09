part of 'operator_bloc.dart';

sealed class OperatorState extends Equatable {
  const OperatorState();

  @override
  List<Object> get props => [];
}

final class OperatorInitial extends OperatorState {}

final class OperatorLoadingState extends OperatorState {
  @override
  List<Object> get props => [];
}

final class OperatorLoadedState extends OperatorState {
  final List<OperatorModel> operator;
  const OperatorLoadedState(this.operator);

  @override
  List<Object> get props => [];
}

final class OperatorErrorState extends OperatorState {
  final String error;
  const OperatorErrorState(this.error);

  @override
  List<Object> get props => [];
}
