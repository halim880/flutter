

import 'package:flutter_topics/app_constants/api_urls.dart';
import 'package:flutter_topics/controllers/base_controller.dart';
import '../services/base_client.dart';

class BaseClientController extends BaseController{
  void getData() async {
    showLoading();
    var response = await BaseClient()
      .get(ApiUrl.baseUrl, "/todos/1")
      .catchError(handleError);
    if(response == null) return;
    hideLoading();
    print(response);
  }
}