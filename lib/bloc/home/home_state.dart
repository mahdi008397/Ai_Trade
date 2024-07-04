part of 'home_bloc.dart';

abstract class HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  ListCurrencyModel data;
  HomeSuccessState(this.data);
}

class HomeErrorState extends HomeState {
  String errorText;
  HomeErrorState(this.errorText);
}
