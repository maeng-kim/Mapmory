import 'package:flutter/material.dart';
import '_2home.dart';
import '_3_1writing.dart';
import '_5_1settings.dart';
import '_4_1recommend.dart';
import '_6_1my_page.dart';

class MyPage2 extends StatefulWidget {
  const MyPage2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  MyPage2State createState() => MyPage2State();
}

class MyPage2State extends State<MyPage2> {
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
                ),
                /*------------------유저정보------------------*/

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
                  left: 112,
                  top: 81,
                  child: Text(
                    '내 정보 수정하기',
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

                /*------------------ㄴ------------------*/
                Positioned(
                  left: 16,
                  top: 129,
                  child: SizedBox(
                    width: 363,
                    height: 437,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 14,
                          top: 0,
                          child: Container(
                            width: 334,
                            height: 437,
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
                          left: 23.34,
                          top: 9.57,
                          child: Container(
                            width: 84.66,
                            height: 80.23,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFECECEC),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 113,
                          top: 45,
                          child: SizedBox(
                            width: 65,
                            height: 17,
                            child: Text(
                              '김멍멍',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF545454),
                                fontSize: 16,
                                fontFamily: 'Gmarket Sans TTF',
                                fontWeight: FontWeight.w500,
                                height: 1.25,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 26,
                          top: 118,
                          child: SizedBox(
                            width: 88,
                            height: 35,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 1,
                                  child: SizedBox(
                                    width: 48,
                                    height: 34,
                                    child: Text(
                                      '나이 : ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF545454),
                                        fontSize: 16,
                                        fontFamily: 'Gmarket Sans TTF',
                                        fontWeight: FontWeight.w500,
                                        height: 1.25,
                                        letterSpacing: -0.50,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 44,
                                  top: 0,
                                  child: SizedBox(
                                    width: 44,
                                    height: 27,
                                    child: Text(
                                      '25세',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF545454),
                                        fontSize: 16,
                                        fontFamily: 'Gmarket Sans TTF',
                                        fontWeight: FontWeight.w500,
                                        height: 1.25,
                                        letterSpacing: -0.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 22,
                          top: 157,
                          child: SizedBox(
                            width: 211,
                            height: 28,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 1,
                                  child: SizedBox(
                                    width: 92,
                                    height: 27,
                                    child: Text(
                                      '여행 스타일:',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF545454),
                                        fontSize: 16,
                                        fontFamily: 'Gmarket Sans TTF',
                                        fontWeight: FontWeight.w500,
                                        height: 1.25,
                                        letterSpacing: -0.50,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 92,
                                  top: 0,
                                  child: SizedBox(
                                    width: 119,
                                    height: 27,
                                    child: Text(
                                      '#익스트림, #바다',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF545454),
                                        fontSize: 16,
                                        fontFamily: 'Gmarket Sans TTF',
                                        fontWeight: FontWeight.w500,
                                        height: 1.25,
                                        letterSpacing: -0.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 20,
                          top: 198,
                          child: SizedBox(
                            width: 272,
                            height: 50,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 2,
                                  child: SizedBox(
                                    width: 148,
                                    height: 27,
                                    child: Text(
                                      '자주 사용하는 키워드: ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF545454),
                                        fontSize: 16,
                                        fontFamily: 'Gmarket Sans TTF',
                                        fontWeight: FontWeight.w500,
                                        height: 1.25,
                                        letterSpacing: -0.50,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 154,
                                  top: 0,
                                  child: SizedBox(
                                    width: 110,
                                    height: 100,
                                    child: Text(
                                      '#재밌는, #먹방, #수영',
                                      style: TextStyle(
                                        color: Color(0xFF545454),
                                        fontSize: 16,
                                        fontFamily: 'Gmarket Sans TTF',
                                        fontWeight: FontWeight.w500,
                                        height: 1.25,
                                        letterSpacing: -0.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 0,
                          top: 95,
                          child: SizedBox(width: 363, height: 13),
                        ),
                        Positioned(
                          left: 30,
                          top: 17,
                          child: Container(
                            width: 69,
                            height: 66,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://via.placeholder.com/69x66"),
                                fit: BoxFit.fill,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 27,
                          top: 141,
                          child: Container(
                            width: 306,
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
                        Positioned(
                          left: 115,
                          top: 72,
                          child: Container(
                            width: 219,
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
                        Positioned(
                          left: 28,
                          top: 251,
                          child: Container(
                            width: 306,
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
                        Positioned(
                          left: 27,
                          top: 182,
                          child: Container(
                            width: 306,
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
                          left: 307,
                          top: 110,
                          child: SizedBox(
                            width: 26,
                            height: 26,
                            child: Stack(children: [
                              //수정버튼
                            ]),
                          ),
                        ),
                        const Positioned(
                          left: 307,
                          top: 41,
                          child: SizedBox(
                            width: 26,
                            height: 26,
                            child: Stack(children: [
                              //수정버튼
                            ]),
                          ),
                        ),
                        const Positioned(
                          left: 307,
                          top: 191,
                          child: SizedBox(
                            width: 26,
                            height: 26,
                            child: Stack(children: [
                              //수정버튼
                            ]),
                          ),
                        ),
                        const Positioned(
                          left: 304,
                          top: 150,
                          child: SizedBox(
                            width: 26,
                            height: 26,
                            child: Stack(children: [
                              //수정버튼
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ))
      ])),
    );
  }
}
