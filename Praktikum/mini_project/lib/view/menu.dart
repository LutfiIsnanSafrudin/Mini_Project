import 'package:flutter/material.dart';
import 'package:mini_project/controller/sqlservice.dart';
import 'package:mini_project/global/global_var.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    var service = SqliteService();
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/latar.jpeg"), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 79, bottom: 20),
                child: Image(
                  image: AssetImage('assets/logo.png'),
                  height: 120,
                  width: 120,
                ),
              ),
              const Text('ANTRI',
                  style: TextStyle(
                    height: 1.2,
                    fontSize: 70,
                  ),
                  textAlign: TextAlign.center),
              Container(
                width: MediaQuery.of(context).size.width - 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(113, 0, 0, 0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Selamat Datang',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        'Temukan Seleramu',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 248, 209, 195)),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                    ],
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(113, 0, 0, 0),
                    ),
                    height: 300,
                    width: MediaQuery.of(context).size.width - 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  backgroundColor:
                                      const Color.fromARGB(83, 22, 22, 22),
                                  side: const BorderSide(
                                      width: 3,
                                      color: Color.fromARGB(31, 255, 255, 255)),
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.all(20)),
                              onPressed: () => service.selectMenu(1).then(
                                  (value) => {
                                        Navigator.of(context).pushNamed(
                                            '/Coffe',
                                            arguments: value)
                                      }),
                              child: const Text("Coffie Minellial"),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  backgroundColor:
                                      const Color.fromARGB(83, 22, 22, 22),
                                  side: const BorderSide(
                                      width: 3,
                                      color: Color.fromARGB(31, 255, 255, 255)),
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.all(20)),
                              onPressed: () => service.selectMenu(2).then(
                                  (value) => {
                                        Navigator.of(context).pushNamed(
                                            '/Coffe',
                                            arguments: value)
                                      }),
                              child: const Text("Non-Coffie"),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  backgroundColor:
                                      const Color.fromARGB(83, 22, 22, 22),
                                  side: const BorderSide(
                                      width: 3,
                                      color: Color.fromARGB(31, 255, 255, 255)),
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.all(20)),
                              onPressed: () => service.selectMenu(3).then(
                                  (value) => {
                                        Navigator.of(context).pushNamed(
                                            '/Coffe',
                                            arguments: value)
                                      }),
                              child: const Text("Snack"),
                            )
                          ],
                        ),
                      ),
                    ))
              ]),
              Column(
                children: [getFootBarNo(context)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
