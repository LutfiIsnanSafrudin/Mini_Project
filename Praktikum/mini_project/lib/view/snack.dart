import 'package:flutter/material.dart';
import 'package:mini_project/global/global_var.dart';
import 'package:mini_project/model/menu.dart';

class Snack extends StatelessWidget {
  const Snack({super.key});

  @override
  Widget build(BuildContext context) {
    final menu = ModalRoute.of(context)!.settings.arguments as List<ModelMenu>;

    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/latar.jpeg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Image(
                image: AssetImage('assets/Cake.png'),
                height: 169,
                width: 169,
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
                      'Coffie Minellial ',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      'Secangkir kopi bisa membuat hari mu enjoy',
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
                        children: getMenu(menu, context),
                      ),
                    ),
                  ))
            ]),
            Column(
              children: [getFootBar(context)],
            )
          ],
        ),
      ),
    );
  }
}
