

import 'package:flutter_topics/helpers/dialog_helper.dart';
import 'package:flutter_topics/services/api_exeptions.dart';

class  BaseController {
  void handleError(error){
    hideLoading();
    if(error is BadRequestException){
      DialogHelper.showErrorDialog(description: error.message);
    }
    else if(error is ApiNotRespondingException){
      DialogHelper.showErrorDialog(description: error.message);
    }
    else if(error is ApiNotRespondingException){
      DialogHelper.showErrorDialog(description: error.message);
    }
    else if(error is ApiNotRespondingException){
      DialogHelper.showErrorDialog(description: error.message);
    }
  }

  showLoading([String? message]){
    DialogHelper.showLoading(message);
  }

  hideLoading(){
    DialogHelper.hideDialog();
  }
}