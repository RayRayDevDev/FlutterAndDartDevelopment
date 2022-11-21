// ignore_for_file: use_key_in_widget_constructors
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
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Text("Test"),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text("Page 1"),
                    onTap: (() => Navigator.pop(context)),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.alarm,
                    ),
                    title: const Text("Page 2"),
                    onTap: () => Navigator.pop(context),
                  )
                ],
              ),
            ),
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
