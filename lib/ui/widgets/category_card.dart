import 'package:flutter/material.dart';
import 'package:task_tender/shared/theme.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 120,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage('assets/kamar.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: blackColor.withOpacity(0.5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Gardener",
                  style: whiteText.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  "10 Founds",
                  style: whiteText.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
