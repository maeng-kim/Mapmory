import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '_3_1writing.dart';
import '_4_1recommend.dart';
import '_5_1settings.dart';
import '_6_1my_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
            width: 393,
            height: 784,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: const Alignment(0.00, -1.00),
                end: const Alignment(0, 1),
                colors: [
                  Colors.white.withOpacity(0.6899999976158142),
                  const Color(0xAFF8F2F2),
                  const Color(0xAFFFF0F0),
                  const Color(0xC9FADFDE)
                ],
              ),
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.50,
                  strokeAlign: BorderSide.strokeAlignCenter,
                ),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Stack(
              children: [
                /*------------------나의 지도 텍스트------------------*/
                const Positioned(
                  left: 71,
                  top: -360,
                  child: Text(
                    '나의 지도',
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 32,
                      //fontFamily: 'Gmarket Sans TTF',
                      fontWeight: FontWeight.w500,
                      height: 20,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),

                /*------------------달성률------------------*/
                Positioned(
                  left: 170,
                  top: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 200,
                      animation: true,
                      lineHeight: 30.0,
                      animationDuration: 2500,
                      percent: 0.8, //퍼센트 조절
                      center: const Text(
                        "80.0%",
                        style: TextStyle(
                          color: Color(0xFF545454),
                          fontSize: 15,
                          //fontFamily: 'Gmarket Sans TTF',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      barRadius: const Radius.circular(15),
                      progressColor: const Color(0xFFD2E89A),
                    ),
                  ),
                ),

                /*------------------지도------------------*/

                /*------------------위치아이콘------------------*/
                const Positioned(
                  left: 30,
                  top: 120,
                  child: SizedBox(
                    width: 40.10,
                    height: 36.81,
                    child: Stack(children: [
                      Icon(Icons.room, color: Color(0xFFD2E89A), size: 45),
                    ]),
                  ),
                ),

                /*------------------하단바------------------*/
                Positioned(
                  left: 30,
                  top: 699,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 332,
                        height: 59,
                        child: Container(
                          width: 332,
                          height: 59,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 0.5),
                          decoration: ShapeDecoration(
                            color: const Color(0xAFFADFDE),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 0.15,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xCC545454),
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.edit,
                                  size: 40,
                                  color: Color(0xCC545454),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const Writing1(
                                                title: 'Next',
                                              )));
                                },
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.place,
                                  size: 40,
                                  color: Color(0xCC545454),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const Recommend1(
                                                title: 'Next',
                                              )));
                                },
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.home,
                                  size: 40,
                                  color: Color(0xCC545454),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const HomeScreen(
                                                title: 'Next',
                                              )));
                                },
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.person,
                                  size: 40,
                                  color: Color(0xCC545454),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const MyPage1(
                                                title: 'Next',
                                              )));
                                },
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.settings,
                                  size: 40,
                                  color: Color(0xCC545454),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const Settings1(
                                                title: 'Next',
                                              )));
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ))
      ])),
    );
  }
}
