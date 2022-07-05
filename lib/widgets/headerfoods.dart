import 'package:e_commerce_food/utils/dimension.dart';
import 'package:e_commerce_food/widgets/bigtext.dart';
import 'package:e_commerce_food/widgets/iconandtext.dart';
import 'package:e_commerce_food/widgets/smalltext.dart';
import 'package:flutter/material.dart';

class HeaderFoods extends StatelessWidget {
  final String textFood;

  const HeaderFoods({Key? key, required this.textFood}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: textFood,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.heightT10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: Colors.blue,
                        size: 15,
                      )),
            ),
            SizedBox(
              width: 10,
            ),
            SmallText(
              text: "4.5",
            ),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "1227"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(
          height: Dimensions.heightT20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: Color.fromARGB(167, 255, 217, 0)),
            IconAndText(
                icon: Icons.location_on,
                text: "1.7 km",
                iconColor: Colors.blue),
            IconAndText(
                icon: Icons.access_time_rounded,
                text: "32 min",
                iconColor: Colors.red),
          ],
        ),
      ],
    );
  }
}
