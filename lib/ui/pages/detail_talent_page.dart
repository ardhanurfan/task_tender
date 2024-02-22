import 'package:flutter/material.dart';
import 'package:task_tender/shared/theme.dart';
import 'package:task_tender/ui/widgets/custom_button.dart';

class DetailTalent extends StatelessWidget {
  const DetailTalent({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Stack(
        children: [
          Image.asset(
            'assets/tantrum.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 24, bottom: 100),
              margin: const EdgeInsets.only(top: 240),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36))),
              child: ListView(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gardener',
                              style: blackText.copyWith(
                                fontWeight: medium,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Nyai Tantrum',
                              style: blackText.copyWith(
                                fontWeight: bold,
                                fontSize: 22,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Rp. 8.000.000 /',
                                  style: primaryText.copyWith(
                                      fontWeight: bold, fontSize: 14),
                                ),
                                Text(
                                  'per month',
                                  style: blackText.copyWith(
                                      fontWeight: medium, fontSize: 12),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: yellowColor,
                              borderRadius: BorderRadius.circular(8)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '3.5 ',
                                style: whiteText.copyWith(
                                    fontWeight: medium, fontSize: 16),
                              ),
                              Icon(
                                Icons.star,
                                color: whiteColor,
                                size: 20,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primaryColor,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '1.2 km from your location',
                          style: blackText.copyWith(
                              fontWeight: medium, fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 28),
                        Text(
                          'Bojongsoang Raya',
                          style: blackText.copyWith(
                              fontWeight: regular, fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 28),
                        Text(
                          '9 Experiences',
                          style: lightGreyText.copyWith(
                              fontWeight: regular, fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                    Divider(
                      height: 0,
                      color: purpleColor,
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    Text(
                      'Description',
                      style: blackText.copyWith(fontWeight: bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Passionate about transforming spaces into vibrant havens, I am a skilled gardener with a green thumb for cultivating beauty and sustainability. With expertise in plant care, soil management, and eco-friendly practices, I thrive in nurturing gardens that not only bloom with life but also promote biodiversity and environmental health. Whether designing serene landscapes, managing pests naturally, or sharing insights on water conservation, my gardening approach is holistic and tailored to each unique ecosystem.',
                      style:
                          blackText.copyWith(fontWeight: regular, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Text(
                      'Skills',
                      style: blackText.copyWith(fontWeight: bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 50,
                              mainAxisSpacing: 7,
                              childAspectRatio: 3 / 1),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check,
                              color: primaryColor,
                            ),
                            Text(
                              'Plant Knowledge',
                              style: blackText.copyWith(
                                  fontWeight: medium,
                                  fontSize: 12,
                                  overflow: TextOverflow.ellipsis),
                            )
                          ],
                        );
                      },
                    ),
                    const SizedBox(
                      height: 39,
                    ),
                    CustomButton(
                        isFit: false,
                        buttonColor: primaryColor,
                        buttonText: 'Chat Talent',
                        textStyle: whiteText.copyWith(
                            fontWeight: medium, fontSize: 12),
                        onPressed: () {})
                  ],
                ),
              ]))
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(child: content()),
    );
  }
}
