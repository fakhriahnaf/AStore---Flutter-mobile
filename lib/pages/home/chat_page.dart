import 'package:AStore/theme.dart';
import 'package:AStore/widget/chat-tile.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontSize: 19,
            fontWeight: semiBold,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    // ignore: unused_element
    Widget emptyChat() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icon_message_null.png', width: 80),
              SizedBox(
                height: 20,
              ),
              Text(
                'Ooops no message yet?',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'you have never done with transaction',
                style: secondaryTextStyle.copyWith(
                  fontSize: 14, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
    }

    Widget content() {
      return Expanded(
          child: Container(
          width: double.infinity,
          color: backgroundColor1,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin
            ),
            children: [
              ChatTile(),
              ChatTile(),
            ],
          )      
        ),
      );
    }

    return Column(
      children: [
        header(),
        //emptyChat(),
        content(),

      ],
    );
  }
}
