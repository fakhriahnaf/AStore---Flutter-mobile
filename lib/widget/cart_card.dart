import 'package:AStore/theme.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10
      ),
      decoration: BoxDecoration(
        color: backgroundColor2,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage('assets/dummy2.png'))
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
                      'Adidas Yezzy Boots',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold
                      ),
                    ),
                    Text(
                      'IDR 120.000',
                      style: priceTextStyle,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/button_add.png',width: 16
                  ),
                  SizedBox( height: 2),
                  Text(
                    '2',
                    style: primaryTextStyle,
                  ),
                  SizedBox(height: 2),
                  Image.asset(
                    'assets/button_min.png',width: 16
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon_remove_cart.png',
                width: 10,
              ),
              SizedBox(width: 6),
              Text(
                'Remove',
                style: alertTextStyle.copyWith(fontWeight: medium, fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}