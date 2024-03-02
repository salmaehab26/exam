import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chips_choice/chips_choice.dart';

class thirdscreen extends StatefulWidget {
  const thirdscreen({super.key});

  static const String routeName = "third";

  @override
  State<thirdscreen> createState() => _thirdscreenState();
}

class _thirdscreenState extends State<thirdscreen> {
  int tag = 1;
  List<String> options = [
    'Discover',
    'News',
    'Most Viewed',
    'Saved',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                bottomNavigationBar: BottomNavigationBar(
                  backgroundColor: Colors.transparent,
                  type: BottomNavigationBarType.fixed,
                  elevation: 0,
                  selectedFontSize: 15,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  selectedItemColor: Color(0xff6941C6),
                  unselectedItemColor: Color(0xff667085),
                  currentIndex: 1,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.calendar_today_outlined),
                      label: "Today",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.grid_view_sharp),
                      label: "Insights",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.chat_bubble_outline),
                      label: "Chat",
                    )
                  ],
                ),
                appBar: AppBar(
                  title: Image(image: AssetImage("assets/images/logo3.png")),
                  centerTitle: true,
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black12, width: 2)),
                              prefixIcon: Icon(Icons.search),
                              hintText: "Articles, Video, Audio and More,...",
                              hintStyle: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.black26)))),
                      ChipsChoice<int>.single(
                        value: tag,
                        // Color(0xffD6BBFB)
                        // spinnerColor: Colors.green,
                        onChanged: (val) => setState(() => tag = val),
                        choiceItems: C2Choice.listFrom<int, String>(
                          source: options,
                          value: (i, v) => i,
                          label: (i, v) => v,
                        ),
                        choiceStyle: C2ChipStyle.filled(
                          backgroundAlpha: 50,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Hot topics",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          Spacer(),
                          Text("See all",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff5925DC),
                                  fontWeight: FontWeight.w400)),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color(0xff5925DC),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Stack(

                                children: [
                                  Container(
                                    width: 326,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/pic1.jpeg"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 35,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              height: 23,
                                              width: 87,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffFEF0C7),
                                                  borderRadius:
                                                      BorderRadius.circular(7)),
                                              child: Text("self-care",
                                                  style: TextStyle(
                                                      color:
                                                          Color(0xff93370D))),
                                            ),
                                            SizedBox(
                                              width: 200,
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '''10 Easy Self-Care Ideas That Can \n Help Boost Your Health''',
                                              style: TextStyle(
                                                  color: Color(0XFFFCFCFD),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                              maxLines: 2,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Stack(

                                children: [
                                  Container(
                                    width: 326,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/pic2.jpeg"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 35,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              height: 23,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffFEE4E2),
                                                  borderRadius:
                                                  BorderRadius.circular(7)),
                                              child: Text("cycle",
                                                  style: TextStyle(
                                                      color:
                                                      Color(0xff93370D))),
                                            ),
                                            SizedBox(
                                              width: 200,
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '''How to take care of Menstrual \n Hygiene during Menstrual Cycle''',
                                              style: TextStyle(
                                                  color: Color(0XFFFCFCFD),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                              maxLines: 2,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text("Get Tips",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18)),
                        ),
                      ),
                      Container(
                        width: 326,
                        height: 196,
                        decoration: BoxDecoration(
                            color: Color(0xffF2F4F7),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 23),
                            child: Column(children: [
                              Image(
                                  image: AssetImage("assets/images/Doctor.png"))
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '''Connect with doctors & \n get suggestions''',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                  maxLines: 2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '''Connect now and get \n expert insights''',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  maxLines: 2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    foregroundColor: Colors.white,
                                    backgroundColor:
                                        Color(0XFF7F56D9), // foreground
                                  ),
                                  onPressed: () {},
                                  child: Text('View detail'),
                                )
                              ],
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Cycle Phases and Period",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            Spacer(),
                            Text("See all",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff5925DC),
                                    fontWeight: FontWeight.w400)),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Color(0xff5925DC),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}
