import 'package:flutter/material.dart';
import 'package:mini_project/view/menu.dart';
import 'package:mini_project/view/pay.dart';

class Pesanan extends StatelessWidget {
  const Pesanan({super.key});

  @override
  Widget build(BuildContext context) {
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
                          'Pesanan',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Text(
                          'Pilihan terbaik kamu',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 248, 209, 195)),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.shopify)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.info_outline))
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Pembayaran()));
                      },
                      child: const Icon(
                        Icons.payment,
                        color: Colors.white70,
                      )),
                ],
              ),
              Column(
                children: const [],
              )
            ],
          )),
        ),
      ),
    );
  }
}
