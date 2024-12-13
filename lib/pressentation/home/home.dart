import 'package:flutter/material.dart';
import 'package:movies/cores/util/colors_manager.dart';
import 'package:movies/pressentation/home/main_movie.dart';
import 'package:movies/pressentation/home/new_release.dart';
import 'package:movies/pressentation/home/recomended.dart';

class Home extends StatelessWidget {
  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManager.backGround,

        body: Column(
          children: [
            MainMovie(),
            SizedBox(height: 20),
            Expanded(
              flex: 22,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                color: ColorsManager.container,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'New Releases ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorsManager.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return NewRelease();
                          }),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 33,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                color: ColorsManager.container,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Recomended ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorsManager.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Recomended();
                            }),
                      ),
                    ]),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: ColorsManager.bottomNavColor,
            selectedItemColor: ColorsManager.bottomNavColor,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 25,
                  color: ColorsManager.white,
                ),
                label: 'HOME',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 25,
                  color: ColorsManager.white,
                ),
                label: 'SEARCH',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/browse_icon.png'),
                  size: 25,
                  color: ColorsManager.white,
                ),
                label: 'BROWSE',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/watch_list_icon.png'),
                  size: 25,
                  color: ColorsManager.white,
                ),
                label: 'WATCHLIST',
              ),
            ])
        // Row(

        );
  }
}
