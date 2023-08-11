import 'package:flutter/material.dart';

import '_2home.dart';
import '_3_1writing.dart';
import '_4_1recommend.dart';
import '_5_1settings.dart';
import '_6_1my_page.dart';

class NextScreen1 extends StatefulWidget {
  const NextScreen1({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  NextScreen1State createState() => NextScreen1State();
}

class NextScreen1State extends State<NextScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Column(
          children: [
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
                  ),
                  Positioned(
                    left: 103,
                    top: 68,
                    child: Container(
                      width: 204,
                      height: 34,
                      decoration: ShapeDecoration(
                        color: const Color(0xC9FFF0EF),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.15, color: Color(0xCC545454)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 25,
                            offset: Offset(-4, 9),
                            spreadRadius: -6,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 27,
                    top: 135,
                    child: Container(
                      width: 334,
                      height: 101,
                      decoration: ShapeDecoration(
                        color: const Color(0xC9FFF0EF),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.15, color: Color(0xCC545454)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 25,
                            offset: Offset(-4, 9),
                            spreadRadius: -6,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 157,
                    top: 75,
                    child: Text(
                      '언어설정',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF545454),
                        fontSize: 24,
                        fontFamily: 'Gmarket Sans TTF',
                        fontWeight: FontWeight.w500,
                        height: 0.83,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 55,
                    top: 151,
                    child: Text(
                      '한국어',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF545454),
                        fontSize: 20,
                        fontFamily: 'Gmarket Sans TTF',
                        fontWeight: FontWeight.w500,
                        height: 1,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 55,
                    top: 188,
                    child: Text(
                      '영어',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF545454),
                        fontSize: 20,
                        fontFamily: 'Gmarket Sans TTF',
                        fontWeight: FontWeight.w500,
                        height: 1,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                  Positioned(
                      left: 310,
                      top: 130,
                      width: 50,
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        child: Image.asset('assets/image/bar3.png'),
                      )),
                  Positioned(
                      left: 310,
                      top: 175,
                      width: 50,
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        child: Image.asset('assets/image/bar3.png'),
                      )), // 클릭 시
                ],
              ),
            ),
          ],
        )));
  }
}
