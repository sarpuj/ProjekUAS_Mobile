import 'dart:html';

import 'package:flutter/material.dart';
import 'package:bantu_donor/rs.dart';
import 'package:bantu_donor/stok.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.bloodtype,
              size: 40,
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Stok Darah",
                  icon: Icon(
                    Icons.description_rounded,
                    size: 30,
                  ),
                ),
                Tab(
                  text: "Rumah Sakit",
                  icon: Icon(
                    Icons.local_hospital,
                    size: 30,
                  ),
                ),
              ],
              isScrollable: true,
              labelPadding: EdgeInsets.only(left: 30, right: 30),
              unselectedLabelColor: Colors.yellow,
            ),
            title: Text('Stok Darah Kab. Kulon Progo'),
          ),
          body: TabBarView(
            children: [
              Stok(),
              RS(),
            ],
          ),
        ),
      ),
    );
  }
}
