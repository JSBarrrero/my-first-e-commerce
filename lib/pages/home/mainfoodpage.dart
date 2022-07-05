import 'package:e_commerce_food/pages/home/foodpagebody.dart';
import 'package:e_commerce_food/utils/dimension.dart';
import 'package:e_commerce_food/widgets/bigtext.dart';
import 'package:e_commerce_food/widgets/smalltext.dart';
import 'package:flutter/material.dart';

class MainFood extends StatefulWidget {
  const MainFood({Key? key}) : super(key: key);

  @override
  State<MainFood> createState() => _MainFoodState();
}

class _MainFoodState extends State<MainFood> {
  @override
  Widget build(BuildContext context) {
    print("la altura es:" + MediaQuery.of(context).size.height.toString());
    return Scaffold(
        body: Column(
      children: [
        Container(
            child: Container(
                margin: EdgeInsets.only(
                    top: Dimensions.heightT45, bottom: Dimensions.heightT15),
                padding: EdgeInsets.only(
                    left: Dimensions.widthT20, right: Dimensions.widthT20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(
                          text: "Colombia",
                          color: Colors.blue,
                        ),
                        Row(
                          children: [
                            SmallText(
                              text: "Ibague",
                              color: Colors.black,
                            ),
                            Icon(Icons.arrow_drop_down_rounded),
                          ],
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                        width: Dimensions.heightT45,
                        height: Dimensions.heightT45,
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: Dimensions.icon24,
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius15),
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ))),
        Expanded(
            child: SingleChildScrollView(
          child: FoodPageBody(),
        ))
      ],
    ));
  }
}
