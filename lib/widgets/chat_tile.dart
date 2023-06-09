import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 33,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo.png',
                  width: 54,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ejaji Store',
                        style: blackTextStyle.copyWith(
                          fontSize: 15
                        ),
                      ),
                      Text(
                        'Halo, Ada yang bisa saya banting?',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  'Sekarang',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 10
                  ),
                 )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            )
          ],
        ),
      ),
    );
  }
}
