import 'package:ai_trade/data/models/ai_model.dart';
import 'package:ai_trade/data/repositories/ai_repository.dart';
import 'package:ai_trade/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'ai_event.dart';
part 'ai_state.dart';

class AiBloc extends Bloc<AiEvent, AiState> {
  final IAiRepository _repo = locator.get();

  AiBloc() : super(AiLoadingState()) {
    on<AnalyzeReauest>(
      (event, emit) async {
        var res = await _repo.analyze();

        res.fold(
          (errorText) {
            emit(AiErrorState(errorText));
          },
          (data) {
            emit(AiSuccessState(data));
          },
        );
      },
    );
  }
}
