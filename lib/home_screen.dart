import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image(image: AssetImage("assets/images/logo.png")),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: badges.Badge(
                position: badges.BadgePosition.topEnd(top: 0, end: 0),
                // badgeContent: Icon(Icons.check, color: Colors.white, size: 10),
                badgeStyle: badges.BadgeStyle(
                  shape: badges.BadgeShape.circle,
                  badgeColor: Colors.red,
                  // padding: EdgeInsets.all(5),
                ),
                child: Icon(CupertinoIcons.bell, size: 24),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Icon(CupertinoIcons.bell, size: 24),
            // ),
          ]),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        padding: EdgeInsets.zero,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedFontSize: 15,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black54,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ".",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: "1",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),
              label: "2",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "3",
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          Container(
            width: 400,
            height: 154,
            // color: Colors.green,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Hello,",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      " Sara Rose",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "How are you feeling today ?",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400, height: 2),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                  maxRadius: 30,
                                  backgroundColor: Color(0xFFD6D6D6),
                                  child: Image(
                                      image: AssetImage(
                                          "assets/images/love.png"))),
                              SizedBox(
                                height: 3,
                              ),
                              Text("LOVE")
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                  maxRadius: 30,
                                  backgroundColor: Color(0xFFD6D6D6),
                                  child: Image(
                                      image: AssetImage(
                                          "assets/images/cool.png"))),
                              SizedBox(
                                height: 3,
                              ),
                              Text("COOL")
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                  maxRadius: 30,
                                  backgroundColor: Color(0xFFD6D6D6),
                                  child: Image(
                                      image: AssetImage(
                                          "assets/images/happy.png"))),
                              SizedBox(
                                height: 3,
                              ),
                              Text("HAPPY")
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                  maxRadius: 30,
                                  backgroundColor: Color(0xFFD6D6D6),
                                  child: Image(
                                      image:
                                          AssetImage("assets/images/sad.png"))),
                              SizedBox(
                                height: 3,
                              ),
                              Text("SAD")
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Feature",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  Spacer(),
                  Text("See more",
                      style:
                          TextStyle(fontSize: 14, color: Color(0xff027A48),fontWeight: FontWeight.w400)),Icon(Icons.arrow_forward_ios,size: 15,color: Color(0xff027A48),),

                ],
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 150,

                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                items: [1, 2, 3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return  Container(
                        padding: EdgeInsets.only(left: 10,top: 5),
                          decoration: BoxDecoration(
                            color: Color(0xffECFDF3),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Positive vibes",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          '''Boost your mood with positive vibes''',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                          maxLines: 2,
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(
                                                          Color(0xff32D583))),
                                              onPressed: () {},
                                              icon: Icon(
                                                CupertinoIcons.play_arrow_solid,
                                                size: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              "10 mins",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Image(
                                          image: AssetImage(
                                              "assets/images/Walking the Dog.png"))
                                    ],
                                  ),
                                ),
                              ]),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: currentIndex,
                  count: 3,

                  effect: WormEffect(dotHeight: 10,dotWidth: 10),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exercise",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  Spacer(),
                  Text("See more",
                      style:
                      TextStyle(fontSize: 14, color: Color(0xff027A48),fontWeight: FontWeight.w400)),Icon(Icons.arrow_forward_ios,size: 15,color: Color(0xff027A48),),

                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0XFFF9F5FF),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(children: [
                          Image(image: AssetImage("assets/images/relax.png")),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Relaxation",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          )
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0XFFFDF2FA),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(children: [
                          Image(image: AssetImage("assets/images/medi.png")),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Meditation",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 151,
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0XFFFFFAF5),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(children: [
                          Image(image: AssetImage("assets/images/breath.png")),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Beathing",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        width: 151,
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0XFFF0F9FF),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(children: [
                          Image(image: AssetImage("assets/images/yoga.png")),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "yoga",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
