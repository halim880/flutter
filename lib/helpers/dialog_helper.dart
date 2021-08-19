
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogHelper {
  static void showErrorDialog({String? title = "Error : ", String? description = "Something went wrong!"}){
    Get.dialog(
      Dialog(
        child: Column(
          children: [
            Text(title??"", style: Get.textTheme.headline4,),
            Text(description??"", style: Get.textTheme.headline4,),
            ElevatedButton(
              onPressed: (){}, 
              child: const Text("Okay"),
            ),
          ],
        ),
      ),
    );
  }

  static void showLoading([String? message]){
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 8,),
            Text(message??"loading..."),
          ],),
        ),
      )
    );
  }

  static void hideDialog(){
    if(Get.isDialogOpen!) Get.back();

  }

}