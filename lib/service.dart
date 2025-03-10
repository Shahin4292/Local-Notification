import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotiService {
  final notificationsPlugin = FlutterLocalNotificationsPlugin();
  bool _isInitialized = false;

  bool get isInitialized => _isInitialized;

  Future<void> initNotification() async {
    if (_isInitialized) return;

    const initSettingsAndroid = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );

    const initSetting = InitializationSettings(android: initSettingsAndroid);
    await notificationsPlugin.initialize(initSetting);
  }

  NotificationDetails notificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        "channelId",
        "channelName",
        channelDescription: "heel",
        importance: Importance.max,
        priority: Priority.high,
      ),
    );
  }

  Future<void> showNotification({
    int id = 0,
    String? title,
    String? body,
  }) async {
    return notificationsPlugin.show(id, title, body, NotificationDetails());
  }
}
