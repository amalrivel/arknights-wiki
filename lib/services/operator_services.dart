import 'dart:convert';

import 'package:arknights_wiki/models/operator/operator.dart';
import 'package:http/http.dart' as http;

class OperatorServices {
  Future<List<OperatorModel>> getOperators() async {
    const String apiUrl = 'https://api.rhodesapi.com/api/operator';

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> operatorData = json.decode(response.body);
      
      final List<OperatorModel> operators = operatorData
          .map((data) => OperatorModel.fromJson(data))
          .toList();
      return operators;
    } else {
      throw Exception('Failed to load operator data');
    }
  }
}
