import 'package:flutter/material.dart';
import 'package:mapmory/json/membership_json.dart';

class Membership extends StatefulWidget {
  const Membership({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  MembershipState createState() => MembershipState();
}

class MembershipState extends State<Membership> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        body: Center(
          child: MyForm(),
        ),
      ),
    );
  }
}
