import 'package:ai_trade/data/datasources/remote/main_datasource.dart';
import 'package:ai_trade/data/models/list_currency_model.dart';
import 'package:ai_trade/locator.dart';

abstract class IMainRepository {
  Future<ListCurrencyModel> getAllCurrency();
}

class MainRepository extends IMainRepository {
  final IMainDatasource _data = locator.get();

  @override
  Future<ListCurrencyModel> getAllCurrency() async {
    var res = await _data.getAllCurrency();
    return res;
  }
}
