import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_form_field.dart';
import '../widgets/header.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget body() {
      return ListView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.15,
          right: paddingHorizontal,
          left: paddingHorizontal,
          bottom: paddingHorizontal,
        ),
        children: [
          Text(
            "TaskTender",
            textAlign: TextAlign.center,
            style: whiteText.copyWith(
              fontSize: 32,
              fontWeight: bold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.075),
            padding: EdgeInsets.all(paddingHorizontal),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: darkGrey.withOpacity(0.1),
                    blurRadius: 8,
                    spreadRadius: 0.5,
                  )
                ]),
            child: Column(
              children: [
                Text(
                  'Sign In to Continue',
                  style: darkGreyText.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(height: 28),
                CustomFormField(
                  hintText: 'Input your email',
                  label: 'Email',
                  validator: 'Please input your email',
                  textController: emailController,
                ),
                const SizedBox(height: 20),
                CustomFormField(
                  hintText: 'Input your password',
                  label: 'Password',
                  validator: 'Please input your password',
                  textController: passwordController,
                  isPassword: true,
                ),
                CustomButton(
                  isFit: false,
                  marginTop: 32,
                  marginBottom: 16,
                  buttonColor: primaryColor,
                  buttonText: "Log In",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/main', (route) => false);
                  },
                  textStyle: whiteText,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Reset Password',
                      style: darkGreyText.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'New Member? ',
                style: darkGreyText.copyWith(
                  fontSize: 12,
                  fontWeight: regular,
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/sign-up'),
                child: Text(
                  'Sign Up Here',
                  style: primaryText.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                  ),
                ),
              ),
            ],
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          const Header(
            height: 0.4,
          ),
          body(),
        ],
      ),
    );
  }
}
