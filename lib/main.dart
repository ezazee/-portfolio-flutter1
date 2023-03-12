import 'package:flutter/material.dart';
import 'package:frontend/pages/cart_page.dart';
import 'package:frontend/pages/checkout_page.dart';
import 'package:frontend/pages/checout_success_page.dart';
import 'package:frontend/pages/detail_chat_page.dart';
import 'package:frontend/pages/home/edit_profile_page.dart';
import 'package:frontend/pages/home/main_page.dart';
import 'package:frontend/pages/product_page.dart';
import 'package:frontend/pages/sign_in_page.dart';
import 'package:frontend/pages/sign_up_page.dart';
import 'package:frontend/pages/splash_page.dart';
import 'package:frontend/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(), 
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/checkout-success': (context) => CheckoutSuccessPage(),
      },
    );
  }
}