import 'package:flutter/material.dart';
import '_2home.dart';
import '_3_1writing.dart';
import '_5_1settings.dart';
import '_4_1recommend.dart';
import '_6_1my_page.dart';

class MyPage3 extends StatefulWidget {
  const MyPage3({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  MyPage3State createState() => MyPage3State();
}

class MyPage3State extends State<MyPage3> {
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
                  left: 97,
                  top: 73,
                  child: Container(
                    width: 204,
                    height: 34,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 25,
                          offset: Offset(-4, 9),
                          spreadRadius: -6,
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 204,
                            height: 34,
                            decoration: ShapeDecoration(
                              color: const Color(0xC9FFF0EF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.15, color: Color(0xCC545454)),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  left: 141,
                  top: 81,
                  child: Text(
                    '마이페이지',
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
                Positioned(
                  left: 30,
                  top: 134,
                  child: Container(
                    width: 334,
                    height: 431,
                    decoration: ShapeDecoration(
                      color: const Color(0xC9FFF0EF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.15, color: Color(0xCC545454)),
                        borderRadius: BorderRadius.circular(10),
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
                  left: 42,
                  top: 199,
                  child: Container(
                    width: 311,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFCDC4C4),
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 50,
                  top: 166,
                  child: Text(
                    '제목',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Positioned(
                  left: 50,
                  top: 223,
                  child: Text(
                    '본문',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                /*------------------수정하기버튼------------------*/
                Positioned(
                  left: 143,
                  top: 592,
                  width: 113,
                  height: 26,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const MyPage1(
                                    title: 'Next',
                                  )));
                    }, // 클릭 시

                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF545454), // 글자, 애니메이션 색상
                      backgroundColor: const Color(0xFFFFFFEA), // 배경 색상
                      textStyle: const TextStyle(
                          fontFamily: 'Gmarket Sans TTF', // 폰트
                          fontWeight: FontWeight.w700, // 폰트 굵기
                          fontSize: 14 // 폰트 크기
                          ),
                      padding: const EdgeInsets.all(1),
                      side: const BorderSide(
                        // 테두리
                        color: Color(0xCC545454),
                        width: 0.5,
                      ),

                      shape: RoundedRectangleBorder(
                        // 라운드
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 3, // 그림자
                    ),
                    child: const Text("수정하기"),
                  ),
                ),
              ],
            ))
      ])),
    );
  }
}
