import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_tender/providers/page_provider.dart';
import 'package:task_tender/shared/theme.dart';
import 'package:task_tender/ui/pages/chat_page.dart';
import 'package:task_tender/ui/pages/find_talent_page.dart';

import 'home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    Widget customBottomNavigation() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        unselectedItemColor: lightGrey,
        unselectedLabelStyle: lightGreyText,
        showUnselectedLabels: true,
        currentIndex: pageProvider.currPage,
        onTap: (value) => {pageProvider.setCurrPage = value},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: "Find Talent",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline_rounded),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: "Assign Task",
          ),
        ],
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
            return const FindTalentPage();
          }
        case 2:
          {
            return const ChatPage();
          }
        default:
          {
            return const HomePage();
          }
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: customBottomNavigation(),
      body: Stack(
        children: [
          buildContent(),
        ],
      ),
    );
  }
}
