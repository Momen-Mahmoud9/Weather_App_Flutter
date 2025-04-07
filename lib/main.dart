import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screens/home_screen.dart';
import 'package:untitled/screens/login.dart';
import 'package:untitled/screens/search_screen.dart';

import 'Provider/WeatherProvider.dart';
import 'Provider/registeration_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => WeatherProvider(),),
      ChangeNotifierProvider(create: (context) => RegisterProvider(),),
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather App',
        home: LoginPage(),
      ),
    );
  }
}
