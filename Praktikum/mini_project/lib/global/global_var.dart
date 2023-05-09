import 'package:flutter/material.dart';
import 'package:mini_project/model/menu.dart';
import 'package:mini_project/view/about.dart';
import 'package:mini_project/view/notifi.dart';
import 'package:mini_project/view/order.dart';
import 'package:mini_project/view/pay.dart';

Row getFootBar(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
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
            Navigator.of(context).pushNamed('/Notif', arguments: const Notif());
          },
          icon: const Icon(Icons.notifications)),
      IconButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed('/Pembayaran', arguments: const Pembayaran());
          },
          icon: const Icon(Icons.shopify)),
      IconButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed('/About', arguments: const Tentang());
          },
          icon: const Icon(Icons.info_outline))
    ],
  );
}

Row getFootBarNo(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Notif()));
          },
          icon: const Icon(Icons.notifications)),
      IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Pesanan()));
          },
          icon: const Icon(Icons.shopify)),
      IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Tentang()));
          },
          icon: const Icon(Icons.info_outline))
    ],
  );
}

List<Widget> getMenu(List<ModelMenu> value, var context) {
  List<Widget> result = [];
  for (var menu in value) {
    result.add(ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(83, 22, 22, 22),
          side: const BorderSide(
              width: 3, color: Color.fromARGB(31, 255, 255, 255)),
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(20)),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(menu.nama_menu),
                content: Image(image: AssetImage(menu.path)),
              );
            });
      },
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[Text(menu.nama_menu)],
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${(menu.harga_menu / 1000).round()}K"),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add))
            ],
          ))
        ],
      ),
    ));
  }
  return result;
}
