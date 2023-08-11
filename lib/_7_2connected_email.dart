import 'package:flutter/material.dart';

class ConnectedEmailPage extends StatelessWidget {
  final String connectedEmail;

  const ConnectedEmailPage({Key? key, required this.connectedEmail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('연결된 이메일 확인'),
        backgroundColor: const Color(0xC9FFF0EF),
        titleTextStyle: const TextStyle(color: Colors.black),
        iconTheme:
            const IconThemeData(color: Colors.black), // Back button color
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white.withOpacity(0.6899999976158142),
              const Color(0xAFF8F2F2),
              const Color(0xAFFFF0F0),
              const Color(0xC9FADFDE),
            ],
          ),
        ),
        child: Center(
          child: Text(
            '연결된 이메일: $connectedEmail',
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
