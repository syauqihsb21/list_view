import 'package:flutter/material.dart';
import 'package:list_view/mobil.dart';
import 'package:list_view/motor.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, //jumlah tab bar
      child: Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
          bottom: const TabBar(tabs: [
            Tab(text: 'Mobil'),
            Tab(text: 'Motor'),
          ]),
          ),
          body: const TabBarView(children: [
            Mobil(),
            Motor(),
          ]),
      ),
    );
  }
}