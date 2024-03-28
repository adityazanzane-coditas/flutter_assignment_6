import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_app/screens/user_list_screen.dart';

void main() {
  runApp(const ProviderScope(child: UserApp()));
}

class UserApp extends StatelessWidget {
  const UserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'User Details',
      home: UserListScreen(),
    );
  }
}
