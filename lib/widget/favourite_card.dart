import 'package:AStore/models/product_model.dart';
import 'package:AStore/providers/favourite_provider.dart';
import 'package:AStore/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteCard extends StatelessWidget {
  final ProductModel product;
  FavouriteCard(this.product);

  @override
  Widget build(BuildContext context) {
    FavouriteProvider favouriteProvider =
        Provider.of<FavouriteProvider>(context);

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
          ClipRRect(child: Image.network(product.galleries[0].url, width: 60)),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '\IDR ${product.price}',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              favouriteProvider.setProduct(product);
            },
            child: Image.asset(
              'assets/w.png',
              width: 34,
            ),
          )
        ],
      ),
    );
  }
}
