import 'package:ai_trade/data/models/list_currency_model.dart';
import 'package:ai_trade/locator.dart';
import 'package:dio/dio.dart';

abstract class IMainDatasource {
  Future<ListCurrencyModel> getAllCurrency();
}

class MainDatasource extends IMainDatasource {
  final Dio _dio = locator.get();

  @override
  Future<ListCurrencyModel> getAllCurrency() async {
    try {
      var res = await _dio.get(
        "data/pricemultifull?fsyms=btc,eth,usdt,usdc,bnb,xrp,ada,sol,doge,dot,matic,shib,trx,avax,ltc,xlm,bch&tsyms=USD",
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      return ListCurrencyModel.fromJson(res.data);
    } catch (e) {
      rethrow;
    }
  }
}
