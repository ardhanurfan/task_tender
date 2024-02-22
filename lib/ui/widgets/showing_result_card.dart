import 'package:flutter/material.dart';
import 'package:task_tender/shared/theme.dart';

class ShowingResultCard extends StatelessWidget {
  const ShowingResultCard({
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
      child: Column(
        children: [
          Row(
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
                        'Gardener',
                        style: darkGreyText.copyWith(
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Ceu Odah',
                        style: blackText.copyWith(
                          fontSize: 12,
                          fontWeight: bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: primaryColor,
                            size: 10,
                          ),
                          Text(
                            '1.2 km from your location',
                            style: darkGreyText.copyWith(
                              fontSize: 10,
                              fontWeight: regular,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: yellowColor,
                ),
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    Text(
                      '4.5',
                      style: whiteText.copyWith(
                        fontSize: 8,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: whiteColor,
                      size: 8,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Rp 2.000.000 /",
                    style: primaryText.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    "month",
                    style: blackText.copyWith(
                      fontWeight: medium,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Text(
                "9 Experiences",
                style: darkGreyText.copyWith(fontSize: 10),
              )
            ],
          )
        ],
      ),
    );
  }
}
