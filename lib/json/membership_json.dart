import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mapmory/_1login.dart';

class MyForm extends StatefulWidget {
  @override
  MembershipState createState() => MembershipState();
}

class MembershipState extends State<MyForm> {
  // final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  final TextEditingController customIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController password2Controller = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  void sendJsonData(BuildContext context) async {
    const String url = 'http://172.30.1.40:8000/accounts/signup/';

    final Map<String, dynamic> data = {
      'custom_id': customIdController.text,
      'password': passwordController.text,
      'password2': password2Controller.text,
      'email': emailController.text,
      'username': usernameController.text,
    };

    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 201) {
      print('Data sent successfully');
      navigateToMyLogin();
    } else {
      print('Failed to send data. Status code: ${response.statusCode}');
      navigateToMyLogin();
    }
  }

  void navigateToMyLogin() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const MyLogin(title: 'correct!')));
  }

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
                /*------------------아이디------------------*/
                Positioned(
                  left: 130,
                  top: 180,
                  child: SizedBox(
                    width: 250,
                    height: 32,
                    child: TextFormField(
                      controller: customIdController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFFFFFEA),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            color: Color(0xCC545454),
                            width: 0.5,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                const Positioned(
                  left: 55,
                  top: -115,
                  child: Text(
                    '아이디 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 20,
                      // fontFamily: 'Gmarket Sans TTF',
                      fontWeight: FontWeight.w800,
                      height: 20,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),

                /*------------------비밀번호------------------*/
                Positioned(
                  left: 130,
                  top: 230,
                  child: SizedBox(
                    width: 250,
                    height: 32,
                    child: TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        // hintText: '비밀번호',
                        filled: true,
                        fillColor: const Color(0xFFFFFFEA),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            color: Color(0xCC545454),
                            width: 0.5,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                    ),
                  ),
                ),
                const Positioned(
                  left: 40,
                  top: -65,
                  child: Text(
                    '비밀번호 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 20,
                      // fontFamily: 'Gmarket Sans TTF',
                      fontWeight: FontWeight.w800,
                      height: 20,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
                /*------------------비밀번호확인------------------*/
                Positioned(
                  left: 130,
                  top: 280,
                  child: SizedBox(
                    width: 250,
                    height: 32,
                    child: TextFormField(
                      controller: password2Controller,
                      decoration: InputDecoration(
                        // hintText: '비밀번호',
                        filled: true,
                        fillColor: const Color(0xFFFFFFEA),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            color: Color(0xCC545454),
                            width: 0.5,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  ),
                ),
                const Positioned(
                  left: 5,
                  top: -15,
                  child: Text(
                    '비밀번호 확인 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 20,
                      // fontFamily: 'Gmarket Sans TTF',
                      fontWeight: FontWeight.w800,
                      height: 20,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),

                /*------------------이메일------------------*/
                Positioned(
                  left: 130,
                  top: 330,
                  child: SizedBox(
                    width: 250,
                    height: 32,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        // hintText: '비밀번호',
                        filled: true,
                        fillColor: const Color(0xFFFFFFEA),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            color: Color(0xCC545454),
                            width: 0.5,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                const Positioned(
                  left: 60,
                  top: 35,
                  child: Text(
                    '이메일',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 20,
                      // fontFamily: 'Gmarket Sans TTF',
                      fontWeight: FontWeight.w800,
                      height: 20,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),

                /*------------------닉네임------------------*/
                Positioned(
                  left: 130,
                  top: 380,
                  child: SizedBox(
                    width: 250,
                    height: 32,
                    child: TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFFFFFEA),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            color: Color(0xCC545454),
                            width: 0.5,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                const Positioned(
                  left: 55,
                  top: 85,
                  child: Text(
                    '닉네임 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 20,
                      // fontFamily: 'Gmarket Sans TTF',
                      fontWeight: FontWeight.w800,
                      height: 20,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),

                /*------------------가입버튼------------------*/
                Positioned(
                  left: 318,
                  top: 450,
                  width: 60,
                  height: 30,
                  child: TextButton(
                    onPressed: () => sendJsonData(context),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF545454),
                      backgroundColor: const Color(0xFFFFFFEA),
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 18),
                      padding: const EdgeInsets.all(1),
                      side: const BorderSide(
                        color: Color(0xCC545454),
                        width: 0.5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text("가입"),
                  ),
                ),
              ],
            ))
      ])),
    );
  }
}
