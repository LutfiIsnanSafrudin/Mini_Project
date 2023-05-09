import 'package:flutter/material.dart';
import 'package:mini_project/view/about.dart';
import 'package:mini_project/view/menu.dart';
import 'package:mini_project/view/notifi.dart';
import 'package:mini_project/view/order.dart';

class Signature extends StatelessWidget {
  const Signature({super.key});

  @override
  Widget build(BuildContext context) {
    // materialApp with debugbanner false
    return MaterialApp(
      // theme of the app
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
      // scaffold with app
      home: Scaffold(
        body: DecoratedBox(
          // BoxDecoration takes the image
          decoration: const BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
                image: AssetImage("assets/latar.jpeg"), fit: BoxFit.cover),
          ),
          child: Center(
              // flutter logo that will shown
              // above the background image
              child: ListView(
            children: [
              const Padding(padding: EdgeInsets.all(30)),
              const Image(
                image: AssetImage('assets/Coffie.png'),
                height: 169,
                width: 169,
              ),
              const Text('ANTRI',
                  style: TextStyle(
                    height: 1.2,
                    fontSize: 70,
                  ),
                  textAlign: TextAlign.center),
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
                    children: [
                      const Text(
                        'Coffie Minellial ',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      const Padding(padding: EdgeInsets.all(10)),
                      const Text(
                        'Secangkir kopi bisa membuat hari mu enjoy',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 248, 209, 195)),
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(83, 22,
                                    22, 22), //background color of button
                                side: const BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(31, 255, 255,
                                        255)), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.all(
                                    20) //content padding inside button
                                ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Text("Mix Jahe Lemon (JL)      20K"),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(83, 22,
                                    22, 22), //background color of button
                                side: const BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(31, 255, 255,
                                        255)), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.all(
                                    20) //content padding inside button
                                ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Text(
                                    "Latte (LA)                           20K"),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(83, 22,
                                    22, 22), //background color of button
                                side: const BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(31, 255, 255,
                                        255)), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.all(
                                    20) //content padding inside button
                                ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Text("Cake Montain (CM)      20K"),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
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
