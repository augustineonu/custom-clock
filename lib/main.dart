import 'package:custom_painter_clock/enums.dart';
import 'package:custom_painter_clock/menu_info.dart';
import 'package:custom_painter_clock/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';


final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var initializationSettingsAndroid = const AndroidInitializationSettings('manu_logo');
  var  initializationSettingsIOS = IOSInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
    onDidReceiveLocalNotification: ( int id, title, body, payload) async {   },
  );
  var initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid, iOS: initializationSettingsIOS,
  ); await flutterLocalNotificationsPlugin.initialize(initializationSettings, onSelectNotification: ( payload) async 
   { if (payload != null) {
    debugPrint('notification payload:$payload');
   }});
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  ChangeNotifierProvider<MenuInfo>(
        create: (context) => MenuInfo(MenuType.clock, imageSource: '', title: '', ),
        child: const MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

