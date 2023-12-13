import 'package:flutter/material.dart';

import 'db_helper.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  User? user;

  @override
  void initState() {
    super.initState();

  }

  Future<void> getUserData() async {
    final dbHelper = DBHelper();
    user = await dbHelper.test_read();
    setState(
            () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Information'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserInfoLabel(label: 'Username', value: user!.username),
            UserInfoLabel(label: 'Phone', value: user!.phone),
            UserInfoLabel(label: 'Address', value: user!.address),
            UserInfoLabel(label: 'Email', value: user!.email),
          ],
        ),
      ),
    );
  }
}

class UserInfoLabel extends StatelessWidget {
  final String label;
  final String value;

  const UserInfoLabel({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          value,
          style: TextStyle(fontSize: 14.0),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}

