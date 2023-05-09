import 'package:flutter/material.dart';
import 'package:mini_project/controller/sqlservice.dart';
import 'package:mini_project/view/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var inputanNomorMeja = TextEditingController();
  var service = SqliteService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/latar.jpeg"), fit: BoxFit.cover),
        ),
        child: Center(
            child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(30)),
            const Image(
              image: AssetImage('assets/logo.png'),
              height: 169,
              width: 169,
            ),
            const Text('ANTRI',
                style: TextStyle(
                  height: 1.2,
                  fontSize: 70,
                )),
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
                      'MENU',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    const Text(
                      'TEMUKAN SELERAMU',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 248, 209, 195)),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(style: BorderStyle.solid)),
                          labelText: 'Masukan Nomor meja'),
                      keyboardType: TextInputType.number,
                      controller: inputanNomorMeja,
                    ),
                    ElevatedButton(
                        onPressed: () => setState(() {
                              if (inputanNomorMeja.text.isEmpty) {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AlertDialog(
                                        title: Text('Warning'),
                                        content: Text(
                                            'Nomor meja tidak boleh kosong'),
                                      );
                                    });
                              } else {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) {
                                    return const Menu();
                                  },
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    final tween = Tween(begin: 0.0, end: 1.0);
                                    return ScaleTransition(
                                        scale: animation.drive(tween),
                                        child: child);
                                  },
                                ));
                              }
                            }),
                        child: const Text('Masuk'))
                  ],
                ))
          ],
        )),
      ),
    );
  }
}
