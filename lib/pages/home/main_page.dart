import 'package:AStore/pages/home/chat_page.dart';
import 'package:AStore/pages/home/favourite_page.dart';
import 'package:AStore/pages/home/home_page.dart';
import 'package:AStore/pages/home/profile_page.dart';
import 'package:AStore/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/cart');
          },
          backgroundColor: secondaryColor,
          child: Image.asset('assets/icon_cart.png', width: 20));
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              backgroundColor: backgroundColor3,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  print(value);
                  currentIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset('assets/icon_home.png',
                        width: 21,
                        color: currentIndex == 0
                            ? primaryColor
                            : Color(0xFF808191)),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset('assets/icon_chat.png',
                          width: 21,
                          color: currentIndex == 1
                              ? primaryColor
                              : Color(0xFF808191)),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset('assets/icon_favourite.png',
                          width: 21,
                          color: currentIndex == 2
                              ? primaryColor
                              : Color(0xFF808191)),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset('assets/icon_profile.png',
                          width: 21,
                          color: currentIndex == 3
                              ? primaryColor
                              : Color(0xFF808191)),
                    ),
                    label: ''),
              ]),
        ),
      );
    }

    // ignore: missing_return
    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return FavouritePage();
          break;
        case 3:
          return ProfilePage();
          break;

        default:
          HomePage();
      }
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
