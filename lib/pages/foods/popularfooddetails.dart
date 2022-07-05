import 'package:e_commerce_food/utils/dimension.dart';
import 'package:e_commerce_food/widgets/bigtext.dart';
import 'package:e_commerce_food/widgets/headerfoods.dart';
import 'package:e_commerce_food/widgets/iconandtext.dart';
import 'package:e_commerce_food/widgets/iconfoodsdetails.dart';
import 'package:e_commerce_food/widgets/smalltext.dart';
import 'package:e_commerce_food/widgets/textdetails.dart';
import 'package:flutter/material.dart';

class PopularFoodsDetails extends StatelessWidget {
  const PopularFoodsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //Imagen de fondo
          Positioned(
            left: 0,
            right: 0,
            child: Container(
                width: double.maxFinite,
                height: Dimensions.foodImg,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/food0.png")))),
          ),
          //Iconos
          Positioned(
              top: Dimensions.heightT45,
              left: Dimensions.widthT20,
              right: Dimensions.widthT20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconFoodsDt(icon: Icons.arrow_back_ios),
                  IconFoodsDt(icon: Icons.shopping_cart_checkout_outlined),
                ],
              )),
          //Presentacion
          Positioned(
              left: 0,
              right: 0,
              top: Dimensions.foodImg - 50,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.widthT20,
                    right: Dimensions.widthT20,
                    top: Dimensions.widthT20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderFoods(
                      textFood: "The Chef House",
                    ),
                    SizedBox(
                      height: Dimensions.heightT10,
                    ),
                    BigText(text: "Presentación"),
                    SizedBox(
                      height: Dimensions.heightT10,
                    ),
                    //Texto con detalles
                    Expanded(
                      child: SingleChildScrollView(
                        child: TextDetails(
                            text:
                                "Continuando con esta acepción, es común hablar de platos regionales, por ejemplo, para englobar todas las recetas que pertenecen a un determinado lugar geográfico, así como platos internacionales para hablar de comidas que proceden de diferentes partes del mundo. El uso de dichas expresiones es normal en casas de comida y hoteles, entre otros establecimientos en los cuales se ofrezca el servicio de restauración a los clientes. Un plato es un recipiente cóncavo y por lo general redondeado que dispone de un borde y que se utiliza para servir la comida. Lo habitual es que, una vez preparados los alimentos, se sirvan en platos y que éstos sean llevados a la mesa para que la gente pueda comer en ellos."),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.heightT10,
            bottom: Dimensions.heightT10,
            left: Dimensions.widthT20,
            right: Dimensions.widthT20),
        decoration: BoxDecoration(
            color: Color.fromARGB(77, 207, 204, 204),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20 * 2),
              topRight: Radius.circular(Dimensions.radius20 * 2),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: Dimensions.widthT20,
                  right: Dimensions.widthT20,
                  top: Dimensions.heightT15,
                  bottom: Dimensions.heightT15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radius20),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: Dimensions.widthT10 / 2,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.widthT10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              child: BigText(text: "\$ 10.000"),
              padding: EdgeInsets.only(
                  left: Dimensions.widthT20,
                  right: Dimensions.widthT20,
                  top: Dimensions.heightT15,
                  bottom: Dimensions.heightT15),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(Dimensions.radius20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
