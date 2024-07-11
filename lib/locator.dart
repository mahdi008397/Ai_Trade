import 'package:ai_trade/data/datasources/remote/ai_datasource.dart';
import 'package:ai_trade/data/datasources/remote/main_datasource.dart';
import 'package:ai_trade/data/repositories/ai_repository.dart';
import 'package:ai_trade/data/repositories/main_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

var locator = GetIt.instance;
const String apiKey = ':/';

setup() async {
  locator.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: 'https://min-api.cryptocompare.com/',
      ),
    ),
  );

  locator.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );

  locator.registerFactory<IMainDatasource>(() => MainDatasource());
  locator.registerFactory<IAiDatasource>(() => AiDatasource());

  locator.registerFactory<IMainRepository>(() => MainRepository());
  locator.registerFactory<IAiRepository>(() => AiRepository());
}
