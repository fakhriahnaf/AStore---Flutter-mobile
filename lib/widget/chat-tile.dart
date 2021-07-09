import 'package:AStore/models/message_model.dart';
import 'package:AStore/models/product_model.dart';
import 'package:AStore/pages/detail_chat_page.dart';
import 'package:AStore/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final MessageModel message;
  ChatTile(this.message);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailChatPage(
                      UnitializedProductModel(),
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 54,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Adidas Store',
                          style: primaryTextStyle.copyWith(
                              fontSize: 15, fontWeight: medium),
                        ),
                        Text(
                          message.message,
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                          overflow: TextOverflow.ellipsis,
                        )
                      ]),
                ),
                Text(
                  'Now',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 10,
                    //fontWeight: light,
                  ),
                )
              ],
            ),
            SizedBox(height: 12),
            Divider(
              thickness: 1,
              color: Color(0xFF2B2939),
            )
          ],
        ),
      ),
    );
  }
}
