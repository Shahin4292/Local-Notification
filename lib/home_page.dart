// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class NotificationScreen extends StatefulWidget {
//   const NotificationScreen({super.key});
//
//   @override
//   _NotificationScreenState createState() => _NotificationScreenState();
// }
//
// class _NotificationScreenState extends State<NotificationScreen> {
//   String _fcmToken = 'Fetching token...';
//
//   @override
//   void initState() {
//     super.initState();
//     _getFCMToken();
//   }
//
//   // Fetch FCM Token
//   Future<void> _getFCMToken() async {
//     String? token = await FirebaseMessaging.instance.getToken();
//     setState(() {
//       _fcmToken = token ?? 'Token not found';
//     });
//   }
//
//   // Copy FCM Token to Clipboard
//   void _copyToClipboard() {
//     Clipboard.setData(ClipboardData(text: _fcmToken)).then((_) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('FCM Token copied to clipboard!')),
//       );
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//           title: Text('Generated FCM')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'FCM Token:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Text(
//               _fcmToken,
//               style: TextStyle(fontSize: 16),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _copyToClipboard, // When button is pressed, copy token
//               child: Text('Copy FCM Token'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }