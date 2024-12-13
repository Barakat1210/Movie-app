import 'package:flutter/material.dart';
import 'package:movies/cores/util/colors_manager.dart';

class Recomended extends StatefulWidget {
   Recomended({super.key});

  @override
  State<Recomended> createState() => _RecomendedState();
}

class _RecomendedState extends State<Recomended> {
bool isClick=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManager.card,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            decoration: BoxDecoration(

              borderRadius: BorderRadius.only(topRight: Radius.circular(4),topLeft: Radius.circular(4)),
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
                ]),
          ),
       const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 4),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Icon(Icons.star,size: 20,color: ColorsManager.yellow,),
                Text('7.7',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorsManager.white,),)
              ],),
              Text('Deadpool 2',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorsManager.white,)),
              Text('2018  R  1h 59m',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorsManager.white,)),
            ],
          ),
        )
        ],
      ),
    );
  }
}

