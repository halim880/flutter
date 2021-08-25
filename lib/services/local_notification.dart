
import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

class NoticficationService {

  static void init (){
    AwesomeNotifications().initialize(
      null,
      [
          NotificationChannel(
              channelKey: 'basic_channel',
              channelName: 'Basic notifications',
              channelDescription: 'Notification channel for basic tests',
              defaultColor: const Color(0xFF9D50DD),
              ledColor: Colors.white,
          )
      ],
      debug: true
    );
  }

  static void notify({String? title, String? body}){
    AwesomeNotifications().createNotification(
      content: NotificationContent(
          id: 10,
          channelKey: 'basic_channel',
          title: title?? 'Simple Notification',
          body: body?? 'Simple body'
      )
    );
  }
}