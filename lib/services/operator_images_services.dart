import 'dart:convert';

import 'package:arknights_wiki/models/operator_images/operator_images.dart';
import 'package:http/http.dart' as http;

class OperatorImagesServices {
  Future<List<OperatorImagesModel>> getOperatorImages(String operator) async {
    String apiUrl = 'https://api.rhodesapi.com/api/art/$operator';

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> operatorImageData = json.decode(response.body);

      final List<OperatorImagesModel> operatorImage = operatorImageData
          .map((data) => OperatorImagesModel.fromJson(data))
          .toList();
      return operatorImage;
    } else {
      throw Exception('Failed to load operator data');
    }
  }
}
