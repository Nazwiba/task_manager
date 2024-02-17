import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/components/customtext.dart';
import 'package:task_manager/components/upper_header.dart';
import 'package:task_manager/screens/menupage.dart';
import 'package:task_manager/screens/privacy_security.dart';
import 'package:task_manager/widgets/constants.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSound = true;
  bool isSwitched = true;
  bool darkSwitched = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: height * 0.03, right: height * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              upperHeader("Settings", context, false, const MenuPage()),
              SizedBox(
                height: height * 0.035,
              ),
              Container(
                padding: EdgeInsets.all(height * 0.004),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 208, 240, 1),
                          Color.fromARGB(255, 253, 170, 53),
                        ])),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(height * 0.012),
                  child: Row(
                    children: [
                      Container(
                        height: height * 0.07,
                        width: height * 0.07,
                        padding: EdgeInsets.all(height * 0.01),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[300],
                        ),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              const Color.fromARGB(255, 224, 224, 224)
                                  .withOpacity(0.6),
                              BlendMode.srcATop),
                          child: const Icon(
                            Icons.workspace_premium_outlined,
                            size: 30,
                            color: MyThemeColor.textColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: height * 0.015,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              customText("Tasks", 26),
                              SizedBox(
                                width: height * 0.005,
                              ),
                              const Icon(
                                Icons.add,
                                size: 25,
                                color: Color.fromARGB(255, 141, 127, 65),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.0005,
                          ),
                          const Text(
                            "Unlock our most exclusive features",
                            style: TextStyle(
                                fontSize: 14, color: MyThemeColor.textColor),
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 22, 23, 22),
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Row(
                children: [
                  if (isSound == true)
                    const Icon(
                      Icons.volume_up_outlined,
                      size: 25,
                      color: MyThemeColor.textColor,
                    )
                  else
                    const Icon(
                      Icons.volume_off_outlined,
                      size: 25,
                      color: MyThemeColor.textColor,
                    ),
                  SizedBox(
                    width: height * 0.015,
                  ),
                  const Text(
                    "Sounds",
                    style:
                        TextStyle(fontSize: 18, color: MyThemeColor.textColor),
                  ),
                  Expanded(child: Container()),
                  CupertinoSwitch(
                      value: isSound,
                      onChanged: (bool value) {
                        setState(() {
                          isSound = value;
                        });
                      })
                ],
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Row(
                children: [
                  if (isSwitched == true)
                    const Icon(
                      Icons.notifications_active_outlined,
                      size: 25,
                      color: MyThemeColor.textColor,
                    )
                  else
                    const Icon(
                      Icons.notifications_off_outlined,
                      size: 25,
                      color:MyThemeColor.textColor,
                    ),
                  SizedBox(
                    width: height * 0.015,
                  ),
                  const Text(
                    "Notifications",
                    style:
                        TextStyle(fontSize: 18, color: MyThemeColor.textColor),
                  ),
                  Expanded(child: Container()),
                  CupertinoSwitch(
                      value: isSwitched,
                      onChanged: (bool value) {
                        setState(() {
                          isSwitched = value;
                        });
                      })
                ],
              ),
              SizedBox(
                height: height * 0.025,
              ),
              // Row(
              //   children: [
              //     if (darkSwitched == true)
              //       Icon(
              //         Icons.dark_mode_outlined,
              //         size: 25,
              //         color: MyThemeColor.textColor,
              //       )
              //     else
              //       Icon(
              //         Icons.light_mode_outlined,
              //         size: 25,
              //         color: MyThemeColor.textColor,
              //       ),
              //     SizedBox(
              //       width: height * 0.015,
              //     ),
              //     Text(
              //       "Dark Mode",
              //       style:
              //           TextStyle(fontSize: 18, color: MyThemeColor.textColor),
              //     ),
              //     Expanded(child: Container()),
              //     CupertinoSwitch(
              //         value: darkSwitched,
              //         onChanged: (bool value) {
              //           setState(() {
              //             darkSwitched = value;
              //           });
              //         })
              //   ],
              // ),
              SizedBox(
                height: height * 0.025,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PrivacySecurity()));
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.lock_open_outlined,
                      size: 25,
                      color: MyThemeColor.textColor,
                    ),
                    SizedBox(
                      width: height * 0.015,
                    ),
                    const Text(
                      "Privacy & Security",
                      style: TextStyle(
                          fontSize: 18, color: MyThemeColor.textColor),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: MyThemeColor.textColor,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => AboutApp()));
                },
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => aboutApp()));
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.info_outline,
                        size: 25,
                        color: MyThemeColor.textColor,
                      ),
                      SizedBox(
                        width: height * 0.015,
                      ),
                      const Text(
                        "About App",
                        style: TextStyle(
                            fontSize: 18, color: MyThemeColor.textColor),
                      ),
                      Expanded(child: Container()),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: MyThemeColor.textColor,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => HelpPage()));
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.help_outline,
                      size: 25,
                      color: MyThemeColor.textColor,
                    ),
                    SizedBox(width: height * 0.015),
                    const Text(
                      "Help & Support",
                      style: TextStyle(
                          fontSize: 18, color: MyThemeColor.textColor),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: MyThemeColor.textColor,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              const Divider(
                color: Colors.blue,
                thickness: 1,
              ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Text(
              //   "Privacy Policy",
              //   style: TextStyle(fontSize: 17, color: MyThemeColor.textColor),
              // ),
              SizedBox(
                height: height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  // saveUser();
                  // Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (context) => LoginScreen()));
                  // Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (context) => NavBar()));
                },
                child: const Text("Sign Out",style: TextStyle(fontSize: 17,color: MyThemeColor.textColor),),
              ),
              SizedBox(height: height*0.02,),
              const Text("VERSION:1.2.354",style: TextStyle(fontSize: 17,color: MyThemeColor.textColor),)
            ],
          ),
        ),
      ),
    );
  }
}
