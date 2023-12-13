import 'package:flutter/material.dart';
import 'main_screen.dart';

import 'registration_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Registration Screen'),
      ),
      body: RegistrationScreen(),
    ),
  ));
}

