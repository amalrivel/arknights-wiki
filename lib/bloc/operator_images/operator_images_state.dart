part of 'operator_images_bloc.dart';

sealed class OperatorImagesState extends Equatable {
  const OperatorImagesState();

  @override
  List<Object> get props => [];
}

final class OperatorImagesInitial extends OperatorImagesState {}

final class OperatorImagesLoadingState extends OperatorImagesState {
  @override
  List<Object> get props => [];
}

final class OperatorImagesLoadedState extends OperatorImagesState {
  final List<OperatorImagesModel> operatorImages;
  const OperatorImagesLoadedState(this.operatorImages);

  @override
  List<Object> get props => [];
}

final class OperatorImagesErrorState extends OperatorImagesState {
  final String error;
  const OperatorImagesErrorState(this.error);

  @override
  List<Object> get props => [];
}
