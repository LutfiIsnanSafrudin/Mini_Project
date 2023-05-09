import 'package:flutter/material.dart';
import 'package:mini_project/view/about.dart';
import 'package:mini_project/view/menu.dart';
import 'package:mini_project/view/order.dart';

class Notif extends StatelessWidget {
  const Notif({super.key});

  @override
  Widget build(BuildContext context) {
    // final menu = ModalRoute.of(context)!.settings.arguments as List<ModelMenu>;
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/latar.jpeg"), fit: BoxFit.cover),
          ),
          child: Center(
              child: ListView(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                margin: const EdgeInsets.fromLTRB(50, 20, 50, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(113, 0, 0, 0),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Notification',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Padding(padding: EdgeInsets.all(5)),
                    ]),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Menu()));
                          },
                          child: const Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white70,
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Notif()));
                          },
                          icon: const Icon(Icons.notifications)),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Pesanan()));
                          },
                          icon: const Icon(Icons.shopify)),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Tentang()));
                          },
                          icon: const Icon(Icons.info_outline))
                    ],
                  ),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
