import 'package:ai_trade/data/models/list_currency_model.dart';
import 'package:ai_trade/data/repositories/main_repository.dart';
import 'package:ai_trade/locator.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IMainRepository _repo = locator.get();

  HomeBloc() : super(HomeLoadingState()) {
    on<GetHomeRequest>(
      (event, emit) async {
        var res = await _repo.getAllCurrency();

        res.fold(
          (errorText) {
            emit(HomeErrorState(errorText));
          },
          (data) {
            emit(HomeSuccessState(data));
          },
        );
      },
    );
  }
}
