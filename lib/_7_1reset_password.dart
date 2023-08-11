import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  ResetPasswordPageState createState() => ResetPasswordPageState();
}

class ResetPasswordPageState extends State<ResetPasswordPage> {
  String newPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('비밀번호 재설정'),
          backgroundColor: const Color(0xC9FFF0EF),
          titleTextStyle: const TextStyle(color: Colors.black),
          iconTheme:
              const IconThemeData(color: Colors.black), // Back button color
        ),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                      newPassword = value;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: '새로운 비밀번호를 입력하세요.',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // 여기서 서버에 새로운 비밀번호를 전송하거나 다른 처리를 수행할 수 있음
                    // ignore: avoid_print
                    print('새로운 비밀번호: $newPassword');
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary:
                        const Color(0xC9FFF0EF), // 배경색을 Color(0xC9FFF0EF)로 설정
                  ),
                  child: const Text(
                    '저장',
                    style: TextStyle(
                      color: Colors.black, // 글자색을 검정색으로 설정
                    ),
                  ),
                )
              ],
            ),
          ),
        ])));
  }
}
