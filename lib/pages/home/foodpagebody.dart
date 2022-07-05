import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_food/utils/dimension.dart';
import 'package:e_commerce_food/widgets/bigtext.dart';
import 'package:e_commerce_food/widgets/headerfoods.dart';
import 'package:e_commerce_food/widgets/iconandtext.dart';
import 'package:e_commerce_food/widgets/smalltext.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBody();
}

class _FoodPageBody extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    pageController.addListener(() {
      print(pageController.page);
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Slider Section
        Container(
          //color: Colors.amber,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        //Dots Indicator
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        //Popular Section
        SizedBox(
          height: Dimensions.heightT20,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.widthT30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(
                width: Dimensions.widthT10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: Dimensions.widthT10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Lista de comidas"),
              ),
            ],
          ),
        ),
        //Lista de comida
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Dimensions.widthT20,
                    right: Dimensions.widthT20,
                    bottom: Dimensions.heightT10),
                child: Row(
                  children: [
                    //Image section
                    Container(
                      width: Dimensions.listViewImage,
                      height: Dimensions.listViewImage,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image/food0.png"),
                        ),
                      ),
                    ),
                    //Text Section
                    Expanded(
                      child: (Container(
                        height: Dimensions.listViewText,
                        //width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.widthT10,
                              right: Dimensions.widthT10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "Deliciosa comida china"),
                              SizedBox(
                                height: Dimensions.heightT10,
                              ),
                              SmallText(text: "Con estas caracteristicas"),
                              SizedBox(
                                height: Dimensions.heightT10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndText(
                                      icon: Icons.circle_sharp,
                                      text: "Normal",
                                      iconColor:
                                          Color.fromARGB(167, 255, 217, 0)),
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
                          ),
                        ),
                      )),
                    )
                  ],
                ),
              );
            }),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - currScale) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.widthT10, right: Dimensions.widthT10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/food0.png"))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.widthT30,
                  right: Dimensions.widthT30,
                  bottom: Dimensions.heightT65),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 10),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5, 0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, 0),
                    )
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.heightT15,
                    left: Dimensions.widthT15,
                    right: Dimensions.widthT15),
                child: HeaderFoods(
                  textFood: "The Chef House",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
