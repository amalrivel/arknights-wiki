part of 'operator_bloc.dart';

sealed class OperatorEvent extends Equatable {
  const OperatorEvent();

  @override
  List<Object> get props => [];
}

final class LoadOperatorEvent extends OperatorEvent {
  const LoadOperatorEvent();
  @override
  List<Object> get props => [];
}
