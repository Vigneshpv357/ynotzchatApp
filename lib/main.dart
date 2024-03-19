import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/chatProviderClass.dart';
import 'package:flutter_application_1/view/HomePage/homePage.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
   
    size: Size(1150, 900),
    center: true,
    // skipTaskbar: false,
    // titleBarStyle: TitleBarStyle.hidden,
    windowButtonVisibility: true,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(MultiProvider(
    
    providers: [
      ChangeNotifierProvider(create: (context)=>chatProviderClass())
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Homepage(),
        );
  }
}
