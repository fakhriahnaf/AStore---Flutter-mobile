import 'package:AStore/pages/cart_page.dart';
import 'package:AStore/pages/checkout_page.dart';
import 'package:AStore/pages/checkout_success_page.dart';
import 'package:AStore/pages/detail_chat_page.dart';
import 'package:AStore/pages/edit_profile_page.dart';
import 'package:AStore/pages/home/main_page.dart';
// import 'package:AStore/pages/product_detail_page.dart';
import 'package:AStore/pages/sign_in_page.dart';
import 'package:AStore/pages/sign_up_page.dart';
import 'package:AStore/pages/splash_page.dart';
import 'package:AStore/providers/cart_provider.dart';
import 'package:AStore/providers/favourite_provider.dart';
import 'package:AStore/providers/product_provider.dart';
import 'package:AStore/providers/transaction_provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'providers/auth_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavouriteProvider(),
        ),
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => TransactionProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/main-page': (context) => MainPage(),
          // '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          // '/product-detail' : (context) => ProductDetailPage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/success-checkout': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
