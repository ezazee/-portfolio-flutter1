import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Barang Favorit'
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishList(){
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_wishlist.png',
                width: 74,
              ),
              SizedBox(height: 23,),
              Text(
                'Belum punya Barang Favorit ?',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium
                ),
              ),
              SizedBox(height: 12,),
              Text(
                'Ayo Cari Barang Favoritmu Sekarang !',
                style: secondaryTextStyle,
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: (){},
                child: Text(
                  'Cari Barang'
                ),
              )
            ],
          ),
        ),
      );
    }


    return Column(
      children: [
        header(),
        emptyWishList(),
      ],
    );
  }
}