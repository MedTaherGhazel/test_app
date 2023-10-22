import 'package:flutter/material.dart';
import 'package:test_app/ui/pages/counter.page.dart';
import 'package:test_app/ui/pages/gallery.page.dart';
import 'package:test_app/ui/pages/home.page.dart';
import 'package:test_app/ui/pages/meteo.page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => HomePage(),
        "/meteo": (context) => const MeteoPage(),
        "/gallery": (context) => const GalleryPage(),
        "/counter": (context) => const CounterPage()
      },
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/home",
    );
  }
}
