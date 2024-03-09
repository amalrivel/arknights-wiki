part of 'operator_images_bloc.dart';

sealed class OperatorImagesEvent extends Equatable {
  const OperatorImagesEvent();

  @override
  List<Object> get props => [];
}

final class LoadOperatorImagesEvent extends OperatorImagesEvent {
  final String name;
  const LoadOperatorImagesEvent({required this.name});
  
  @override
  List<Object> get props => [name];
}
