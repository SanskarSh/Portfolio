import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  static const String routeName = '/404';

  @override
  Widget build(BuildContext context) {
    // Todo: Implement ErrorScreen
    return const Placeholder(
      child: Center(
        child: Text("404"),
      ),
    );
  }
}
