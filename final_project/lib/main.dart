// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(MainPageSecuritySystemApp());

class MainPageSecuritySystemApp extends StatefulWidget {
  @override
  State<MainPageSecuritySystemApp> createState() => _SecuritySystemAppState();
}

class _SecuritySystemAppState extends State<MainPageSecuritySystemApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Scaffold(
            backgroundColor: Colors.grey,
            body: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "Welcome!",
                    textStyle: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                    speed: const Duration(milliseconds: 250),
                  ),
                ],
              ),
            ),
            drawer: Drawer(
              backgroundColor: Colors.grey,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: Text(
                        "RäSecure",
                        style: TextStyle(fontSize: 48),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text("Home"),
                    onTap: (() => Navigator.pop(context)),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.alarm,
                    ),
                    title: const Text("Alarms"),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("Settings"),
                    onTap: (() => Navigator.pop(context)),
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
