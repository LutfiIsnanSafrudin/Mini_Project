import 'package:flutter/material.dart';
import 'package:mini_project/view/about.dart';
import 'package:mini_project/view/coffie.dart';
import 'package:mini_project/view/home_page.dart';
import 'package:mini_project/view/menu.dart';
import 'package:mini_project/view/non_coffie.dart';
import 'package:mini_project/view/notifi.dart';
import 'package:mini_project/view/pay.dart';
import 'package:mini_project/view/snack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Antri',
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/Menu': (_) => const Menu(),
        '/Coffe': (_) => const Coffie(),
        '/NonCoffe': (_) => const NonCoffie(),
        '/Snack': (_) => const Snack(),
        '/Notif': (_) => const Notif(),
        '/Pembayaran': (_) => const Pembayaran(),
        '/About': (_) => const Tentang()
      },
    );
  }
}
