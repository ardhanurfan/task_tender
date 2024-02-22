import 'package:flutter/material.dart';
import 'package:task_tender/shared/theme.dart';
import 'package:task_tender/ui/widgets/custom_form_field.dart';
import 'package:task_tender/ui/widgets/header.dart';
import 'package:task_tender/ui/widgets/showing_result_card.dart';

class FindTalentPage extends StatelessWidget {
  const FindTalentPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController findController = TextEditingController();

    Widget showResult() {
      return const Column(
        children: [
          ShowingResultCard(),
          ShowingResultCard(),
          ShowingResultCard(),
        ],
      );
    }

    Widget body() {
      return ListView(
        padding: EdgeInsets.only(
            top: 100,
            left: paddingHorizontal,
            right: paddingHorizontal,
            bottom: 20),
        children: [
          Text(
            "Search Details",
            style: whiteText.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 32,
              bottom: 24,
            ),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Search for Helper",
                  style: blackText.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomFormField(
                  prefixIcon: Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
                  hintText: 'Input your talent name',
                  label: 'Find Talent',
                  validator: 'Please input your email',
                  textController: findController,
                ),
              ],
            ),
          ),
          Text(
            'Showing Result',
            style: blackText.copyWith(
              fontWeight: bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          showResult(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 20),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: whiteColor,
          shape: const CircleBorder(),
          elevation: 1,
          child: Icon(
            Icons.volume_up,
            color: yellowColor,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Stack(
        children: [
          const Header(
            height: 0.3,
          ),
          body(),
        ],
      ),
    );
  }
}
