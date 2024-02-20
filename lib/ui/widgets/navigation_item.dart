import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_tender/providers/page_provider.dart';
import 'package:task_tender/shared/theme.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({super.key, required this.icon, required this.index});

  final IconData icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    return SizedBox(
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          IconButton(
              onPressed: () {
                pageProvider.setCurrPage = index;
              },
              icon: Icon(
                icon,
                color:
                    pageProvider.currPage == index ? primaryColor : lightGrey,
              )),
          Container(
            height: 2,
            width: 30,
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
