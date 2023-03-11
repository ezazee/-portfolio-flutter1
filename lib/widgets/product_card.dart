import  'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
              ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: primaryTextColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
              'assets/image_shoes.png',
              width: 215,
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sepatu Hiking',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Sepatu Super',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Rp. 500.000.000',
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}