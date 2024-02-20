import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_tender/providers/user_provider.dart';

import '../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);
    Timer(const Duration(seconds: 3), () async {
      User? currentUser = FirebaseAuth.instance.currentUser;
      final navigator = Navigator.of(context);

      if (currentUser == null) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/sign-in', (route) => false);
      } else {
        if (await userProvider.getUserById(id: currentUser.uid)) {
          navigator.pushNamedAndRemoveUntil('/main', (route) => false);
        } else {
          navigator.pushNamedAndRemoveUntil('/sign-in', (route) => false);
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10000),
              color: Colors.white.withOpacity(0.2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "TaskTender",
                  style: whiteText.copyWith(
                    fontSize: 32,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  "Connecting Hands,\nCreating Opportunities",
                  style: whiteText.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ));
  }
}
