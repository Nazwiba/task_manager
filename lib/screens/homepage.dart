import 'package:flutter/material.dart';
import 'package:task_manager/screens/menupage.dart';
import 'package:task_manager/screens/profilepage.dart';
import 'package:task_manager/widgets/constants.dart';
import 'package:task_manager/widgets/premium.dart';
import 'package:task_manager/widgets/task.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _pages = [
    const HomePage(),
    const ProfilePage(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(context),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 5,
              )
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
            //type: BottomNavigationBarType.shifting,
            backgroundColor: kwhite,
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(size: 45),
            selectedFontSize: 15,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_rounded,
                    size: 30,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_rounded,
                    size: 30,
                  ),
                  label: "Person"),
            ],
            onTap: (tapindex) {
              setState(() {
                index = tapindex;
              });
            },
            currentIndex: index,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: kdark,
        child: Icon(
          Icons.add,
          color: klightgrey,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[index],
    );
  }

  _buildAppbar(context) {
    return AppBar(
      backgroundColor: kwhite,
      elevation: 0,
      title: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 5),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: klightgrey, borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/profile.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            "Hello, John",
            style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MenuPage()));
            },
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey.shade600,
              size: 35,
            )),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 8, left: 8, top: 15, bottom: 10),
          child: GoPremium(),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            "Tasks",
            style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 26,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(child: Tasks())
      ],
    );
  }
}
