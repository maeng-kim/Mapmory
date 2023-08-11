import 'package:flutter/material.dart';
//import '_3_3writing.dart';

class Recommend2 extends StatefulWidget {
  const Recommend2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Recommend2State createState() => Recommend2State();
}

class Recommend2State extends State<Recommend2> {
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
                  left: 35,
                  top: 57,
                  child: Container(
                    width: 309,
                    height: 33,
                    decoration: ShapeDecoration(
                      color: const Color(0xC9D9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 55,
                  top: 65,
                  child: Text(
                    '대전',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Gmarket Sans TTF',
                      fontWeight: FontWeight.w300,
                      height: 1.33,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
                const Positioned(
                  left: 20,
                  top: 115,
                  child: SizedBox(
                    width: 98,
                    height: 25,
                    child: Text(
                      '#성심당',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Gmarket Sans TTF',
                        fontWeight: FontWeight.w300,
                        height: 1.54,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  top: 140,
                  child: Container(
                    width: 312,
                    height: 212,
                    decoration: ShapeDecoration(
                      color: const Color(0xC9FFFFEA),
                      shape: RoundedRectangleBorder(
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
                  left: 55,
                  top: 153,
                  child: Container(
                    width: 136,
                    height: 189,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF8D6D5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 208,
                  top: 153,
                  child: Container(
                    width: 136,
                    height: 189,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF8D6D5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 217,
                  top: 305,
                  child: Text(
                    '대전 최고 맛집! 기다려도 먹기 \n힘들다는 성심당에 다녀왔어...',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Gmarket Sans TTF',
                      fontWeight: FontWeight.w300,
                      height: 1.50,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
                Positioned(
                  left: 214,
                  top: 158,
                  child: Container(
                    width: 124,
                    height: 143,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/124x143"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
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
                  ),
                ),
                const Positioned(
                  left: 37,
                  top: 362,
                  child: SizedBox(
                    width: 98,
                    height: 25,
                    child: Text(
                      '#엑스포 전망대',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Gmarket Sans TTF',
                        fontWeight: FontWeight.w300,
                        height: 1.54,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 44,
                  top: 387,
                  child: Container(
                    width: 312,
                    height: 229,
                    decoration: ShapeDecoration(
                      color: const Color(0xC9FFFFEA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
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
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 397,
                  child: Container(
                    width: 283,
                    height: 91,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/283x91"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
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
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 498,
                  child: Container(
                    width: 283,
                    height: 105,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/283x105"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
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
                  ),
                ),
              ],
            ))
      ])),
    );
  }
}
