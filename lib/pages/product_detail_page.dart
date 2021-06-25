import 'package:AStore/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  List images = ['assets/dummy3.png', 'assets/dummy4.png', 'assets/dummy5.png'];

  List familiarProducts = [
    'assets/dummy3.png',
    'assets/dummy4.png',
    'assets/dummy5.png',
    'assets/dummy3.png',
    'assets/dummy4.png',
    'assets/dummy5.png'
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: currentIndex == index ? primaryColor : Color(0xFFC4c4c4)),
      );
    }

    Widget familiarProductCard(String imageUrl) {
      return Container(
        width: 64,
        height: 64,
        margin: EdgeInsets.only(
          right: 14,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imageUrl)),
          borderRadius: BorderRadius.circular(6),
        ),
      );
    }

    Widget header() {
      int index = -1;

      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.chevron_left, color: backgroundColor1),
                ),
                GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.shopping_bag, color: backgroundColor1)),
              ],
            ),
          ),
          CarouselSlider(
              items: images
                  .map((image) => Image.asset(
                        image,
                        width: MediaQuery.of(context).size.width,
                        height: 310,
                        fit: BoxFit.cover,
                      ))
                  .toList(),
              options: CarouselOptions(
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  })),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((e) {
                index++;
                return indicator(index);
              }).toList())
        ],
      );
    }

    Widget content() {
      int index = -1;

      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          color: backgroundColor1,
        ),
        child: Column(
          children: [
            //HEader
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ADDIDAZ Yezzy Bootss',
                            style: primaryTextStyle.copyWith(
                                fontSize: 18, fontWeight: semiBold)),
                        Text(
                          'Shoes',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset('assets/whislist_button.png', width: 46),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 20,
                left: defaultMargin,
                right: defaultMargin,
              ),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price start from',
                      style: primaryTextStyle,
                    ),
                    Text(
                      'IDR 120.000',
                      style: priceTextStyle,
                    )
                  ]),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'dnwjdnjnwq nwjndjqwnjdn njndjnjsafndj nwdjnwjdqw s',
                    style: secondaryTextStyle.copyWith(fontWeight: light),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Text(
                      'Familiar Products',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: familiarProducts.map((image) {
                      index++;
                      return Container(
                        margin: EdgeInsets.only(
                          left: index == 0 ? defaultMargin : 0
                        ),
                        child: familiarProductCard(image),
                      );
                    }).toList()
                  ),
                  )
                ],
              ),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
                bottom: 40,
              ),
              child: Row(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(
                        'assets/button_chat.png'
                      ))
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      height: 54,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          primary: primaryColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          backgroundColor: primaryColor
                        ),
                        child: Text(
                          'Add to Cart',
                          style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
