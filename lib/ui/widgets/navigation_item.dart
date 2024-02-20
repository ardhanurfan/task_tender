import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_tender/providers/page_provider.dart';
import 'package:task_tender/shared/theme.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem(
      {super.key, required this.icon, required this.index, required this.text});

  final IconData icon;
  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    return SizedBox(
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          IconButton(
            onPressed: () {
              pageProvider.setCurrPage = index;
            },
            icon: SizedBox(
              width: 100,
              child: Column(
                children: [
                  Icon(
                    icon,
                    color: pageProvider.currPage == index
                        ? primaryColor
                        : lightGrey,
                  ),
                  Text(
                    text,
                    style: (pageProvider.currPage == index
                            ? primaryText
                            : lightGreyText)
                        .copyWith(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 2,
            width: 80,
            decoration: BoxDecoration(
              color: pageProvider.currPage == index
                  ? primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(18),
            ),
          )
        ],
      ),
    );
  }
}
