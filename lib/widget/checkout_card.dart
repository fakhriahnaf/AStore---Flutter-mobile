import 'package:AStore/theme.dart';
import 'package:flutter/material.dart';

class CheckoutCard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: backgroundColor2,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  'assets/dummy2.png'
                ),
              )
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Addidazz yezzy Boots',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'IDR 120.000',
                  style: priceTextStyle.copyWith(
                    fontSize: 12
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            '2 items',
            style: secondaryTextStyle.copyWith(fontWeight: light),
          ),
        ],
      ),
    );
  }
}