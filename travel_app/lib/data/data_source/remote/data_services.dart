import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:travel_app/app/const.dart';
import 'package:travel_app/data/network/erroe_message_model.dart';
import 'package:travel_app/data/network/exception.dart';
import 'package:travel_app/data/response/response_data.dart';

abstract class DataServices {
  Future<List<DataReponse>> getData();
}

class DataServicesImp extends DataServices {
  @override
  Future<List<DataReponse>> getData() async {
    http.Response res = await http.get(Uri.parse(baseUrl + apiUrl));
    if (res.statusCode == 200) {
      List<dynamic> list = json.decode(res.body);
      print(list);
      return list.map((e) => DataReponse.fromJson(e)).toList();
    } else {
      throw ServerException(failure: ErrorMessageModel.formJson(res.headers));
    }
  }
}
