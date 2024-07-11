import 'package:ai_trade/data/datasources/remote/ai_datasource.dart';
import 'package:ai_trade/data/models/ai_model.dart';
import 'package:dartz/dartz.dart';

import '../../locator.dart';

abstract class IAiRepository {
  Future<Either<String, AiResponseModel>> analyze();
}

class AiRepository extends IAiRepository {
  final IAiDatasource _data = locator.get();

  @override
  Future<Either<String, AiResponseModel>> analyze() async {
    try {
      var res = await _data.sendText("Analyze BTCUSD for me");
      return right(res);
    } catch (e) {
      return left(e.toString());
    }
  }
}
