import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/screens/homepage.dart';
import 'package:task_manager/screens/settings.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: height * 0.03, right: height * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: height * 0.03, bottom: height * 0.03),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage()));
                    },
                    child: const Icon(
                      Icons.close_rounded,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: height * 0.01,
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.13,
            ),
            const Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const Text(
              "About Us",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const Text(
              "Help",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            GestureDetector(
              onTap: () => SystemNavigator.pop,
              child: const Text(
                "Logout",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
