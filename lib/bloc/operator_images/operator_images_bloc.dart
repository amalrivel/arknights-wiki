import 'package:arknights_wiki/models/operator_images/operator_images.dart';
import 'package:arknights_wiki/services/operator_images_services.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'operator_images_event.dart';
part 'operator_images_state.dart';

class OperatorImagesBloc extends Bloc<OperatorImagesEvent, OperatorImagesState> {
  final OperatorImagesServices _operatorImagesServices;
  OperatorImagesBloc(this._operatorImagesServices) : super(OperatorImagesInitial()) {
    on<LoadOperatorImagesEvent>((event, emit) async {
      emit(OperatorImagesLoadingState());
      try {
        final images = await _operatorImagesServices.getOperatorImages(event.name);
        emit(OperatorImagesLoadedState(images));
      } catch (e) {
        emit(OperatorImagesErrorState(e.toString()));
      }
    });
  }
}
