import 'package:AStore/providers/favourite_provider.dart';
import 'package:AStore/widget/favourite_card.dart';
import 'package:flutter/material.dart';
import 'package:AStore/theme.dart';
import 'package:provider/provider.dart';

class FavouritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FavouriteProvider favouriteProvider =
        Provider.of<FavouriteProvider>(context);


    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Your Favourite',
          style: primaryTextStyle.copyWith(
            fontSize: 19,
            fontWeight: semiBold,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyFavouriteList() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_fav_null.png',
                width: 74,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                'You dont have a favourite things?',
                style: primaryTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Let\'s find your fav things',
                style: secondaryTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: Text('Explore Store',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium)),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: backgroundColor1,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: favouriteProvider.favourite.map((product) => FavouriteCard(product)).toList()
          ),
        ),
      );
    }

    return Column(
      children: [
        header(), 
        favouriteProvider.favourite.length == 0 ? emptyFavouriteList() : content()],
    );
  }
}
