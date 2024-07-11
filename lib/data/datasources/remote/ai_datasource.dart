import 'package:ai_trade/data/models/ai_model.dart';
import 'package:ai_trade/locator.dart';
import 'package:dio/dio.dart';

abstract class IAiDatasource {
  Future<AiResponseModel> sendText(String text);
}

class AiDatasource extends IAiDatasource {
  final Dio _dio = locator.get();

  @override
  Future<AiResponseModel> sendText(String text) async {
    try {
      var res = await _dio.post(
        "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=$apiKey",
        data: {
          'contents': [
            {
              "parts": [
                {
                  "text": text,
                }
              ]
            }
          ],
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      return AiResponseModel.fromJson(res.data);
    } catch (e) {
      rethrow;
    }
  }
}
