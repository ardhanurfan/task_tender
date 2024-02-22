import 'package:flutter/material.dart';
import 'package:task_tender/shared/theme.dart';
import 'package:task_tender/ui/widgets/header.dart';

class Contract extends StatelessWidget {
  const Contract({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 65, left: 31, right: 31, bottom: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 24,
                  color: whiteColor,
                ),
                Text(
                  'Contract',
                  style: whiteText.copyWith(fontWeight: bold, fontSize: 18),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            const SizedBox(height: 97),
            Text(
              'This Service Agreement is made on 11/02/24, by and between Tutung, herein referred to as "Client," and Nyai Tantrum, herein referred to as "Service Provider”.',
              style: blackText.copyWith(fontSize: 14, fontWeight: regular),
            ),
            const SizedBox(height: 8),
            Text(
              'Services Provided',
              style: blackText.copyWith(fontSize: 16, fontWeight: bold),
            ),
            Text(
              'The Client hereby agrees to hire the Service Provider to perform as the gardener.',
              style: blackText.copyWith(fontSize: 14, fontWeight: regular),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [const Header(height: 0.16), content()],
      ),
    );
  }
}
