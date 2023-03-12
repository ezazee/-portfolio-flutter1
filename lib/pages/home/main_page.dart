import 'package:flutter/material.dart';
import 'package:frontend/pages/home/chat_page.dart';
import 'package:frontend/pages/home/home_page.dart';
import 'package:frontend/pages/home/profile_page.dart';
import 'package:frontend/pages/home/wishlist_page.dart';
import 'package:frontend/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

      Widget cartButton(){
        return FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, '/cart');
          },
          backgroundColor: secondaryColor,
          child: Image.asset(
              'assets/icon_cart.png',
              width: 20,
            ),
        );
      }


      Widget customButtomNav(){
        return Container(

          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
              ),
            ],
          ),

          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(25)
            ),


            child: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 10,
              clipBehavior: Clip.antiAlias,


              child: BottomNavigationBar(
                backgroundColor: backgroundColor4,
                currentIndex: currentIndex,
                onTap: (value){
                  print(value);
                  setState(() {
                    currentIndex = value;
                  });
                },
                type: BottomNavigationBarType.fixed,
                elevation: 10,
                items: [
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                          'assets/icon_home.png',
                           width: 21, 
                           color: currentIndex == 0 ? primaryColor : const Color(0xff252836),
                      ),
                    ),
                    label: '',
                  ),
                    
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                          'assets/icon_chat.png',
                           width: 20, 
                           color: currentIndex == 1 ? primaryColor : const Color(0xff252836),
                      ),
                    ),
                    label: '',
                  ),
                    
                   BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                          'assets/icon_wishlist.png',
                           width: 20, 
                           color: currentIndex == 2 ? primaryColor : const Color(0xff252836),
                      ),
                    ),
                    label: '',
                  ),
                    
                   BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                          'assets/icon_profile.png',
                           width: 18, 
                           color: currentIndex == 3 ? primaryColor : const Color(0xff252836),
                      ),
                    ),
                    label: '',
                  ),
                ],
              ),
            ),
          ),
        );
      }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishListPage();
          break;
        case 3:
          return ProfilePage();
          break;

        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1 ,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtomNav(),
      body: body(),
    );
  }
}