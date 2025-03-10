import 'package:flutter/material.dart';
import 'package:notification_local_app/service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NotiService().showNotification(
              title: "Hello",
              body: "I'm Shahin"
            );
            print("hello");
          },
          child: Text("Sent Notification"),
        ),
      ),
    );
  }
}
