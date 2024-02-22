import 'package:flutter/material.dart';
import 'package:task_tender/shared/theme.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      padding: const EdgeInsets.all(8),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/kamar.jpg',
                  width: 60,
                  height: 60,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ceu Odah',
                    style: blackText.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'Cooker',
                    style: lightGreyText.copyWith(
                      fontSize: 10,
                      fontWeight: regular,
                    ),
                  ),
                ],
              )
            ],
          ),
          Text(
            "32 min ago",
            style: primaryText.copyWith(
              fontSize: 8,
            ),
          ),
        ],
      ),
    );
  }
}
