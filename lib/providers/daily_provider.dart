import 'package:covid19/models/daily_model.dart';
import 'package:covid19/services/api_services.dart';
import 'package:flutter/material.dart';

class DailyProvider with ChangeNotifier {
  var api = ApiServices();
  List<DailyModel> daily;

  Future<List<DailyModel>> getDailyProvider(String id) async {
    final response = await api.client.get("${api.baseUrl}/api/daily/$id");
    if (response.statusCode == 200) {
      notifyListeners();
      var res = dailyModelFromJson(response.body);
      daily = res;
      return daily;
    } else {
      return null;
      // }
    }
  }
}
