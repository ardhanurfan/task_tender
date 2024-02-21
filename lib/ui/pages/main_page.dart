import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_tender/providers/page_provider.dart';
import 'package:task_tender/shared/theme.dart';
import 'package:task_tender/ui/pages/detail_assign_page.dart';
import 'package:task_tender/ui/pages/detail_talent_page.dart';
import 'package:task_tender/ui/widgets/navigation_item.dart';

import 'home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    // NavBar
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 68,
          width: double.infinity,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(defaultRadius),
              boxShadow: [
                BoxShadow(
                  color: darkGrey.withOpacity(0.1),
                  offset: const Offset(
                    0,
                    0,
                  ),
                  blurRadius: 2,
                  spreadRadius: 1,
                ),
              ]),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavigationItem(
                index: 0,
                icon: Icons.home_outlined,
                text: 'Home',
              ),
              NavigationItem(
                index: 1,
                icon: Icons.search_rounded,
                text: 'Find Talent',
              ),
              NavigationItem(
                index: 2,
                icon: Icons.mail_outline_rounded,
                text: 'Chat',
              ),
              NavigationItem(
                index: 3,
                icon: Icons.calendar_today_outlined,
                text: 'Assign Task',
              ),
            ],
          ),
        ),
      );
    }

    Widget buildContent() {
      switch (pageProvider.currPage) {
        case 0:
          {
            return const HomePage();
          }
        case 1:
          {
            return const DetailAssign();
          }
        default:
          {
            return const HomePage();
          }
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
