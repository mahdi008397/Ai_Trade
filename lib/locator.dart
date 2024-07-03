import 'package:ai_trade/data/datasources/remote/main_datasource.dart';
import 'package:ai_trade/data/repositories/main_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

var locator = GetIt.instance;
const String key = '-';

setup() async {
  locator.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: 'https://api.nobitex.ir/',
      ),
    ),
  );

  locator.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );

  locator.registerFactory<IMainDatasource>(() => MainDatasource());

  locator.registerFactory<IMainRepository>(() => MainRepository());
}
