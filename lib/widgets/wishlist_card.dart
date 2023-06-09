import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class WishListCard extends StatelessWidget {
  const WishListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20
      ),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
              ),
        ],
        borderRadius: BorderRadius.circular(12),
        color: primaryTextColor,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sepatu Super',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold
                  ),
                ),
                Text(
                  'Rp. 430.000.000',
                  style: priceTextStyle
                )
              ],
            ),
          ),
          Image.asset(
            'assets/button_wishlist_blue.png',
            width: 34,
          )
        ],
      ),
    );
  }
}