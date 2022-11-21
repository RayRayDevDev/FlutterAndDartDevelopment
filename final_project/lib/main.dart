import 'package:flutter/material.dart';

void main() => runApp(MainPageSecuritySystemApp());

class MainPageSecuritySystemApp extends StatefulWidget {
  @override
  State<MainPageSecuritySystemApp> createState() =>
      _MainPageSecuritySystemAppState();
}

class _MainPageSecuritySystemAppState extends State<MainPageSecuritySystemApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Scaffold(
            backgroundColor: Colors.grey,
            drawer: const Drawer(),
            appBar: AppBar(
              centerTitle: true,
              title: const Text("RäSecure"),
              backgroundColor: Colors.black,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(Icons.menu),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
