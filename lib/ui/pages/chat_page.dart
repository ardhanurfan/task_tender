import 'package:flutter/material.dart';
import 'package:task_tender/shared/theme.dart';
import 'package:task_tender/ui/widgets/assign_task_card.dart';
import 'package:task_tender/ui/widgets/custom_form_field.dart';
import 'package:task_tender/ui/widgets/header.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController findController = TextEditingController();

    Widget chats() {
      return const Column(
        children: [
          AssignTaskCard(),
          AssignTaskCard(),
          AssignTaskCard(),
        ],
      );
    }

    Widget body() {
      return ListView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.18,
          left: paddingHorizontal,
          right: paddingHorizontal,
          bottom: 20,
        ),
        children: [
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
          const SizedBox(height: 24),
          chats(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          body(),
          Header(
            height: 0.15,
            child: Text(
              "Chat",
              style: whiteText.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
