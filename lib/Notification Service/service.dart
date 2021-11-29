// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationService {
//   // FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//   //     FlutterLocalNotificationsPlugin(); //
//   // void requestIOSPermissions() {
//   //   flutterLocalNotificationsPlugin
//   //       .resolvePlatformSpecificImplementation<
//   //           IOSFlutterLocalNotificationsPlugin>()
//   //       ?.requestPermissions(
//   //         alert: true,
//   //         badge: true,
//   //         sound: true,
//   //       );
//   // }

//   // Future selectNotification(String? payload) async {
//   //   if (payload != null) {
//   //     print('notification payload: $payload');
//   //   } else {
//   //     print("Notification Done");
//   //   }
//   //   print("CLICK");
//   // }

//   // Future<void> showWeeklyAtDayTime() async {
//   //   var time = Time(10, 0, 0);
//   //   var androidChannelSpecifics = AndroidNotificationDetails(
//   //     'CHANNEL_ID 5',
//   //     'CHANNEL_NAME 5',
//   //     importance: Importance.max,
//   //     priority: Priority.high,
//   //   );
//   //   var iosChannelSpecifics = IOSNotificationDetails();
//   //   var platformChannelSpecifics = NotificationDetails(
//   //       android: androidChannelSpecifics, iOS: iosChannelSpecifics);
//   //   await flutterLocalNotificationsPlugin.showWeeklyAtDayAndTime(
//   //     0,
//   //     'Test Title at ${time.hour}:${time.minute}.${time.second}',
//   //     'Test Body', //null
//   //     Day.saturday,
//   //     time,
//   //     platformChannelSpecifics,
//   //     payload: 'Test Payload',
//   //   );
//   // }

//   final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   Future initialize() async {
//     FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//         FlutterLocalNotificationsPlugin();

//     AndroidInitializationSettings androidInitializationSettings =
//         AndroidInitializationSettings("@mipmap/ic_launcher");

//     IOSInitializationSettings iosInitializationSettings =
//         IOSInitializationSettings();

//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//             android: androidInitializationSettings,
//             iOS: iosInitializationSettings);

//     await flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }

//   Future instantNofitication() async {
//     var android = AndroidNotificationDetails("id", "channel",
//         channelDescription: "DESCCCCCCCCCCCCCCCCCCc");

//     var ios = IOSNotificationDetails();

//     var platform = new NotificationDetails(android: android, iOS: ios);

//     await _flutterLocalNotificationsPlugin.show(
//         0, "Demo instant notification", "Tap to do something", platform,
//         payload: "Welcome to demo app");
//   }

//   Future<void> showWeeklyAtDayTime() async {
//     var time = Time(14, 8, 0);
//     var androidChannelSpecifics = AndroidNotificationDetails(
//       'CHANNEL_ID 5',
//       'CHANNEL_NAME 5',
//       importance: Importance.max,
//       priority: Priority.high,
//     );
//     var iosChannelSpecifics = IOSNotificationDetails();
//     var platformChannelSpecifics = NotificationDetails(
//         android: androidChannelSpecifics, iOS: iosChannelSpecifics);
//     await _flutterLocalNotificationsPlugin.showWeeklyAtDayAndTime(
//       0,
//       'Test Title at ${time.hour}:${time.minute}.${time.second}',
//       'Test Body', //null
//       Day.saturday,
//       time,
//       platformChannelSpecifics,
//       payload: 'Test Payload',
//     );
//   }
// }

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotifyHelper {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin(); //

  initializeNotification() async {
    tz.initializeTimeZones();
    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
            requestSoundPermission: false,
            requestBadgePermission: false,
            requestAlertPermission: false,
            onDidReceiveLocalNotification: onDidReceiveLocalNotification);

    final AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings("appicon");

    final InitializationSettings initializationSettings =
        InitializationSettings(
      iOS: initializationSettingsIOS,
      android: initializationSettingsAndroid,
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: selectNotification);
  }

  showWeeklyAtDayTime() async {
    var time = Time(10, 00, 0);
    print(time);
    var androidChannelSpecifics = AndroidNotificationDetails(
      'CHANNEL_ID 5',
      'CHANNEL_NAME 5',
      channelDescription: 'Inspire',
      importance: Importance.max,
      priority: Priority.high,
    );
    var iosChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        android: androidChannelSpecifics, iOS: iosChannelSpecifics);
    await flutterLocalNotificationsPlugin.showWeeklyAtDayAndTime(
      0,
      'INSPIRE',
      'Test Body', //null
      Day.monday,
      time,
      platformChannelSpecifics,
      payload: 'Test Payload',
    );
  }

  void requestIOSPermissions() {
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  Future selectNotification(String? payload) async {
    if (payload != null) {
      print('notification payload: $payload');
    } else {
      print("Notification Done");
    }
    print("CLICKKKK");
  }

  Future onDidReceiveLocalNotification(
      int? id, String? title, String? body, String? payload) async {
    // display a dialog with the notification details, tap ok to go to another page
    /*showDialog(
      //context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(body),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            child: Text('Ok'),
            onPressed: () async {
              Navigator.of(context, rootNavigator: true).pop();
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(payload),
                ),
              );
            },
          )
        ],
      ),
    );*/
    print("CLICKKKK");
  }
}
