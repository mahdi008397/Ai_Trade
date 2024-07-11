part of 'ai_bloc.dart';

abstract class AiState {}

class AiLoadingState extends AiState {}

class AiSuccessState extends AiState {
  AiResponseModel data;
  AiSuccessState(this.data);
}

class AiErrorState extends AiState {
  String errorText;
  AiErrorState(this.errorText);
}
