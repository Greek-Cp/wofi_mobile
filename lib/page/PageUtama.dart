import 'package:flutter/material.dart';
import 'package:wofi_mobile/const/color.dart';
import 'package:wofi_mobile/page/PageAkunSaya.dart';

class PageUtama extends StatefulWidget {
  static String? routeName = "/PageUtama";

  @override
  State<PageUtama> createState() => _PageUtamaState();
}

class _PageUtamaState extends State<PageUtama> {
  List<BottomNavigationBarItem> listItemBottomNav = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home), label: "", backgroundColor: Colors.black),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.menu_book,
        ),
        backgroundColor: Colors.black,
        label: ""),
    BottomNavigationBarItem(
        icon: Icon(Icons.task), label: "", backgroundColor: Colors.black),
    BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        label: "",
        backgroundColor: Colors.black)
  ];

  List<Widget> listPage = [
    Text("Home"),
    Text("Menu"),
    Text("Todo"),
    PageAkunSaya(),
  ];
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: listPage[indexSelected],
      bottomNavigationBar: BottomNavigationBar(
        items: listItemBottomNav,
        backgroundColor: Colors.black,
        selectedItemColor: Color.fromARGB(255, 232, 180, 184),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: indexSelected,
        onTap: (value) {
          setState(() {
            indexSelected = value;
          });
        },
      ),
    );
  }
}
