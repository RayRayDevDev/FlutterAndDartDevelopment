// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(MaterialApp(
      home: MainPageSecuritySystemApp(),
    ));

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
                        fontFamily: "Horizon"),
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
                    onTap: (() => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()))),
                  ),
                  ListTile(
                      leading: const Icon(
                        Icons.alarm,
                      ),
                      title: const Text("Alarms"),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlarmsScreen(),
                          ))),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("Settings"),
                    onTap: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsScreen(),
                        ))),
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

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
            "Welcome to my Security app!\nIn this app, you'll be able to monitor various sensors while outside the house, allowing you to ensure your family and belongings stay safe!\nAs this is more akin to a proof-of-concept, you'll have to manually activate the app's alarms, but it is a good illustration as to what one could ezpect when the app is fully completed!\nI thank you for your consideration of this app, and hope you have fun seeing what could-be.\nAll the best!\nRä"),
      ),
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey,
    );
  }
}

class AlarmsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alarms"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey,
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey,
    );
  }
}
