import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
class secondescreen extends StatefulWidget {
  static const String routeName = "second";

  const secondescreen({super.key});

  @override
  State<secondescreen> createState() => _secondescreenState();
}

class _secondescreenState extends State<secondescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            selectedFontSize: 15,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Color(0xff363F72),
            unselectedItemColor: Color(0xff667085),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ".",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.near_me_outlined),
                label: "1",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: "2",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: "3",
              )
            ],
          ),
          appBar: AppBar(
              title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello, Jade",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text("Ready to workout?",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600))
                  ]),
              leading: Image(
                image: AssetImage("assets/images/profile.png"),
              )),
          body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                // alignment: Alignment.center,
                width: 350,
                height: 80,
              decoration: BoxDecoration(color: Color(0XFFF8F9FC),borderRadius: BorderRadius.circular(20)),

                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(CupertinoIcons.heart),
                              Text("Heart Rate")
                            ],
                          ),
                          Text("81 BPM")
                        ],
                      ),
                    ),
                    Container(
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.black12,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(CupertinoIcons.list_bullet),
                              Text("To-do")
                            ],
                          ),
                          Text("32,5 %")
                        ],
                      ),
                    ),
                    Container(
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.black12,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/fire.png"),
                              Text("Calo")
                            ],
                          ),
                          Text("1000 cal")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(alignment: Alignment.topLeft,
              child: Text("Workout Programs",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),


    ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
                  Container(
                    height: 174,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color(0XFFEAECF5),
                        borderRadius: BorderRadius.circular(8)),
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 68,
                                  height: 36,
                                  padding: EdgeInsets.only(
                                      top: 8, left: 12, bottom: 8, right: 12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xffFCFCFD)),
                                  child: Text("7 days",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text("Morning Yoga",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Expanded(
                                child: Text("Improve mental focus.",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.watch_later_outlined,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("30 mins")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image(
                                  image:
                                  AssetImage("assets/images/workout1.png"))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 174,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color(0XFFEAECF5),
                        borderRadius: BorderRadius.circular(8)),
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0,bottom: 15.0,top: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 68,
                                  height: 36,
                                  padding: EdgeInsets.only(
                                      top: 8, left: 12, bottom: 8, right: 12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xffFCFCFD)),
                                  child: Text("3 days",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text("Plank Exercise",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Expanded(
                                child: Text("Improve posture and stability.",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.watch_later_outlined,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("30 mins")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                  image:
                                  AssetImage("assets/images/workout2.png"))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 174,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color(0XFFEAECF5),
                        borderRadius: BorderRadius.circular(8)),
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 68,
                                  height: 36,
                                  padding: EdgeInsets.only(
                                      top: 8, left: 12, bottom: 8, right: 12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xffFCFCFD)),
                                  child: Text("7 days",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text("Morning Yoga",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Expanded(
                                child: Text("Improve mental focus.",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.watch_later_outlined,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("30 mins")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image(
                                  image:
                                  AssetImage("assets/images/workout1.png"))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),]
      ),
        ),
      ),
    );
  }
}
