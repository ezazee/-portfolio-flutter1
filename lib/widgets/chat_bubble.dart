import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;

  ChatBubble({this.isSender = false, this.text = '', this.hasProduct = false,});

  @override
  Widget build(BuildContext context) {


    Widget productPreview(){
      return Container(
        width: 230,
        margin: EdgeInsets.only(
          bottom: 12
        ),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular( isSender ? 12 : 0),
            topRight: Radius.circular( isSender ? 0 : 12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12), 
          ),
          color: isSender ? primaryColor : backgroundColor5,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                      'assets/image_shoes.png',
                      width: 70,
                    ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sepatu Super',
                        style: primaryTextStyle,
                      ),
                      SizedBox(height: 4,),
                      Text(
                        'Rp.430.000.000',
                        style: priceTextStyle.copyWith(
                          fontWeight: medium
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.white
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                  child: Text(
                    'Keranjang',
                    style: primaryTextStyle,
                  ),
                ),
                SizedBox(width: 8,),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                  child: Text(
                    'Beli',
                    style: GoogleFonts.poppins(
                      color: Colors.black
                    )
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }


    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 30
      ),
      child: Column(
        crossAxisAlignment: isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview() : SizedBox(),
          Row(
            mainAxisAlignment: isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular( isSender ? 12 : 0),
                      topRight: Radius.circular( isSender ? 0 : 12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12), 
                    ),
                    color: isSender ? primaryColor : backgroundColor5,
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: isSender ? Colors.white : Colors.black
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}