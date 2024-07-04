import 'package:ai_trade/data/datasources/remote/main_datasource.dart';
import 'package:ai_trade/data/models/list_currency_model.dart';
import 'package:ai_trade/locator.dart';
import 'package:dartz/dartz.dart';

abstract class IMainRepository {
  Future<Either<String, ListCurrencyModel>> getAllCurrency();
}

class MainRepository extends IMainRepository {
  final IMainDatasource _data = locator.get();

  @override
  Future<Either<String, ListCurrencyModel>> getAllCurrency() async {
    try {
      var res = await _data.getAllCurrency();
      return right(res);
    } catch (e) {
      return left(e.toString());
    }
  }
}
