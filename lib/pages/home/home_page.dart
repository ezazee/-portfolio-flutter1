import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';
import 'package:frontend/widgets/product_card.dart';
import 'package:frontend/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
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
                    Text(
                        'Halo, Reza',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: semiBold
                        )
                      ),
                      Text(
                          '@ezazee',
                          style: subtitleTextStyle.copyWith(
                            fontSize: 16
                          ),
                        )
                  ],
                ),
              ),
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/image_profile.png'))
                ),
              ),
            ],
          ),
      );
    }


  Widget categories(){
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin,),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor,
              ),
              child: Text(
                'Sepatu',
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
      
      
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor,
                ),
                color: transparentColor,
              ),
              child: Text(
                'Sepatu Lari',
                style: subtitleTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
            
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor,
                ),
                color: transparentColor,
              ),
              child: Text(
                'Sepatu Latihan',
                style: subtitleTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
      
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor,
                ),
                color: transparentColor,
              ),
              child: Text(
                'Sepatu Basket',
                style: subtitleTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
      
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor,
                ),
                color: transparentColor,
              ),
              child: Text(
                'Sepatu Hiking',
                style: subtitleTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget popularProductsTitle(){
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'Produk Populer',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: semiBold
        ),
      ),
    );
  }


  Widget populerProducts(){
    return Container(
      margin: EdgeInsets.only(
        top: 14,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Row(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget newArrivalsTitle(){
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'Barang Baru',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: semiBold
        ),
      ),
    );
  }


  Widget newArrivals(){
    return Container(
      margin: EdgeInsets.only(
        top: 14,
      ),
      child: Column(
        children: [
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),
        ],
      ),
    );
  }


  
    return ListView(
      children: [
        header(),
        categories(),
        popularProductsTitle(),
        populerProducts(),
        newArrivalsTitle(),
        newArrivals(),
      ],
    );
  }
}