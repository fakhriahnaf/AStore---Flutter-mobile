import 'package:AStore/theme.dart';
import 'package:flutter/material.dart';

class FavouriteCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor2,
      ),
      child: Row(
        children: [
          ClipRRect(
            child: Image.asset('assets/dummy2.png', width: 60)
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Adidas Yezzy Bootss jdwdnwwnq',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'IDR 120.000',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          Image.asset(
            'assets/whistlist_button_on.png',
            width: 34,
          )
        ],
      ),
    );
  }
}
