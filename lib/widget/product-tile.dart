import 'package:AStore/theme.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        top: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/dummy2.png',
                width: 120, 
                height: 120, 
                fit: BoxFit.cover
              ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shoes',
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Sepatu running Addidas',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium
                )
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'IDR 120,000',
                style: priceTextStyle.copyWith(
                  fontWeight: medium
                ),
              )
            ],
          ))
          
        ],
      ),
    );
  }
}
