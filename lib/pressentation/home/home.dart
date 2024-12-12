import 'package:flutter/material.dart';
import 'package:movies/cores/util/colors_manager.dart';
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManager.backGround,
      child: Scaffold(
        appBar: AppBar(
          title: Text('allah',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: ColorsManager.white),
          ),centerTitle: true,
        ),
          body: Container(
           child: Text('data',style: TextStyle(color: ColorsManager.white),),
          ),
          backgroundColor: ColorsManager.backGround,
           bottomNavigationBar:BottomNavigationBar(
               backgroundColor:ColorsManager.bottomNavColor,selectedItemColor:ColorsManager.bottomNavColor ,
               items: [
             BottomNavigationBarItem(icon:Icon(Icons.home,size: 25,color: ColorsManager.white,),label: 'HOME' ,),
             BottomNavigationBarItem(icon:Icon(Icons.search,size: 25,color: ColorsManager.white,),label: 'SEARCH' ,),
             BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/browse_icon.png'),size: 25,color: ColorsManager.white,),label: 'BROWSE' ,),
             BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/watch_list_icon.png'),size: 25,color: ColorsManager.white,),label: 'WATCHLIST' ,),
           ])
        // Row(

          ),
    );
  }
}
