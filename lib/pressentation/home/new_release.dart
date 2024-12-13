import 'package:flutter/material.dart';
import 'package:movies/cores/util/colors_manager.dart';

class NewRelease extends StatefulWidget {
  NewRelease({super.key});

  @override
  State<NewRelease> createState() => _NewReleaseState();
}

class _NewReleaseState extends State<NewRelease> {
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Stack(
        children: [
          Image.asset('assets/images/new release.png'),
          InkWell(
            onTap: () {
              if (isClick) {
                isClick = false;
              } else {
                isClick = true;
              }
              setState(() {});
            },
            child: Container(
              width: 22,
              height: 25,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(color: isClick?ColorsManager.yellow:ColorsManager.iconBg),
              child: Icon(
                isClick ? Icons.check : Icons.add,
                size: 25,
                color: ColorsManager.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
