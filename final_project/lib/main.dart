// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: MainPageSecuritySystemApp(),
    ));

class MainPageSecuritySystemApp extends StatefulWidget {
  @override
  State<MainPageSecuritySystemApp> createState() => MainSecurityAppState();
}

class MainSecurityAppState extends State<MainPageSecuritySystemApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          // ignore: sort_child_properties_last
          child: Scaffold(
            backgroundColor: Colors.grey,
            body: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "Your Security, personalized.\n\nWelcome to RäSecure!",
                    textStyle: GoogleFonts.goudyBookletter1911(
                      fontSize: 48,
                    ),
                    speed: const Duration(milliseconds: 150),
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
                      ),
                    ),
                  ),
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
      body: Center(
        // ignore: sort_child_properties_last
        child: Text(
            "Welcome to my Security app!\n\nIn this app, you'll be able to monitor various sensors while outside the house, allowing you to ensure your family and belongings stay safe!\n\nAs this is more akin to a proof-of-concept, you'll have to manually activate the app's alarms, but it is a good illustration as to what one could expect when the app is fully completed!\n\nI thank you for your consideration of this app, and hope you have fun seeing what could-be.\n\nAll the best!\n\nRä",
            style: GoogleFonts.goudyBookletter1911(
              fontSize: 24,
            )),
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

onAlertDialog(context) {
  AlertDialog alert = AlertDialog(
      title: Text(
        "Test Complete!",
        style: GoogleFonts.goudyBookletter1911(fontWeight: FontWeight.bold),
      ),
      content:  Text("Successfully completed Alarm Testing!", style: GoogleFonts.goudyBookletter1911(fontWeight: FontWeight.bold),),
      actions: [
        TextButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AlarmsScreen(),
              )),
          child:  Text(
            "Test Again", style: GoogleFonts.goudyBookletter1911(fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                )),
            child: Text("Go Back Home", style: GoogleFonts.goudyBookletter1911(fontWeight: FontWeight.bold,))
      ]);
  return alert;
}

class AlarmsScreen extends StatefulWidget {
  @override
  State<AlarmsScreen> createState() => _AlarmsScreenState();
}

class _AlarmsScreenState extends State<AlarmsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CircularCountDownTimer(
              duration: 5,
              initialDuration: 0,
              width: double.infinity,
              height: double.infinity,
              fillColor: Colors.red,
              ringColor: Colors.blue,
              onComplete: () => showDialog(
                  context: context,
                  builder: ((context) => onAlertDialog(context))))),
      appBar: AppBar(
        title: const Text("Alarms"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey,
    );
  }
}
