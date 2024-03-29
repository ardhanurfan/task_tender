import 'package:flutter/material.dart';
import 'package:task_tender/shared/theme.dart';
import 'package:task_tender/ui/widgets/assign_task_card.dart';
import 'package:task_tender/ui/widgets/category_card.dart';
import 'package:task_tender/ui/widgets/custom_form_field.dart';
import 'package:task_tender/ui/widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController findController = TextEditingController();

    Widget categories() {
      return const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
          ],
        ),
      );
    }

    Widget assignTask() {
      return const Column(
        children: [
          AssignTaskCard(),
          AssignTaskCard(),
          AssignTaskCard(),
          AssignTaskCard(),
          AssignTaskCard(),
        ],
      );
    }

    Widget body() {
      return ListView(
        padding: EdgeInsets.only(
          top: 80,
          left: paddingHorizontal,
          right: paddingHorizontal,
          bottom: 20,
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Hi, ",
                    style: whiteText.copyWith(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "Tutung",
                    style: whiteText.copyWith(
                      fontSize: 30,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.account_circle_outlined,
                size: 36,
                color: whiteColor,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 24,
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
                  "Need a New Assistant?",
                  style: blackText.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  "Search and acquire today",
                  style: blackText.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
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
            'Explore Helper',
            style: blackText.copyWith(
              fontWeight: bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          categories(),
          const SizedBox(height: 24),
          Text(
            'Assign Task',
            style: blackText.copyWith(
              fontWeight: bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          assignTask(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
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
