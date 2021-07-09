import 'package:AStore/models/cart_model.dart';
import 'package:AStore/providers/cart_provider.dart';
import 'package:AStore/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartCard extends StatelessWidget {
  final CartModel cart;
  CartCard(this.cart);

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          color: backgroundColor2, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(cart.product.galleries[0].url))),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cart.product.name,
                      style: primaryTextStyle.copyWith(fontWeight: semiBold),
                    ),
                    Text(
                      '\IDR ${cart.product.price}',
                      style: priceTextStyle,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        cartProvider.addQuantity(cart.id);
                      },
                      child: Image.asset('assets/button_add.png', width: 16)),
                  SizedBox(height: 2),
                  Text(
                    cart.quantity.toString(),
                    style: primaryTextStyle,
                  ),
                  SizedBox(height: 2),
                  GestureDetector(
                      onTap: () {
                        cartProvider.reduceQuantity(cart.id);
                      },
                      child: Image.asset('assets/button_min.png', width: 16))
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  cartProvider.removeCart(cart.id);
                },
                child: Image.asset(
                  'assets/icon_remove_cart.png',
                  width: 10,
                ),
              ),
              SizedBox(width: 6),
              Text(
                'Remove',
                style:
                    alertTextStyle.copyWith(fontWeight: medium, fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
