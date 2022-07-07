import 'package:e_commerce_food/utils/dimension.dart';
import 'package:e_commerce_food/widgets/bigtext.dart';
import 'package:e_commerce_food/widgets/iconfoodsdetails.dart';
import 'package:e_commerce_food/widgets/textdetails.dart';
import 'package:flutter/material.dart';

class RecommendedFood extends StatelessWidget {
  const RecommendedFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            toolbarHeight: Dimensions.heightT80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconFoodsDt(icon: Icons.clear),
                IconFoodsDt(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.heightT15),
              child: Container(
                child: Center(
                    child: BigText(
                        size: Dimensions.font17, text: "The Chef House")),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                    top: Dimensions.heightT10, bottom: Dimensions.heightT10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius15),
                        topRight: Radius.circular(Dimensions.radius15))),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.purple,
            expandedHeight: Dimensions.foodImg,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.widthT10, right: Dimensions.widthT10),
                  child: TextDetails(
                      text:
                          "Continuando con esta acepción, es común hablar de platos regionales, por ejemplo, para englobar todas las recetas que pertenecen a un determinado lugar geográfico, así como platos internacionales para hablar de comidas que proceden de diferentes partes del mundo. El uso de dichas expresiones es normal en casas de comida y hoteles, entre otros establecimientos en los cuales se ofrezca el servicio de restauración a los clientes. Un plato es un recipiente cóncavo y por lo general redondeado que dispone de un borde y que se utiliza para servir la comida. Lo habitual es que, una vez preparados los alimentos, se sirvan en platos y que éstos sean llevados a la mesa para que la gente pueda comer en ellos.Continuando con esta acepción, es común hablar de platos regionales, por ejemplo, para englobar todas las recetas que pertenecen a un determinado lugar geográfico, así como platos internacionales para hablar de comidas que proceden de diferentes partes del mundo. El uso de dichas expresiones es normal en casas de comida y hoteles, entre otros establecimientos en los cuales se ofrezca el servicio de restauración a los clientes. Un plato es un recipiente cóncavo y por lo general redondeado que dispone de un borde y que se utiliza para servir la comida. Lo habitual es que, una vez preparados los alimentos, se sirvan en platos y que éstos sean llevados a la mesa para que la gente pueda comer en ellos.Continuando con esta acepción, es común hablar de platos regionales, por ejemplo, para englobar todas las recetas que pertenecen a un determinado lugar geográfico, así como platos internacionales para hablar de comidas que proceden de diferentes partes del mundo. El uso de dichas expresiones es normal en casas de comida y hoteles, entre otros establecimientos en los cuales se ofrezca el servicio de restauración a los clientes. Un plato es un recipiente cóncavo y por lo general redondeado que dispone de un borde y que se utiliza para servir la comida. Lo habitual es que, una vez preparados los alimentos, se sirvan en platos y que éstos sean llevados a la mesa para que la gente pueda comer en ellos."),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.widthT20 * 2.5,
              right: Dimensions.widthT20 * 2.5,
              top: Dimensions.heightT10,
              bottom: Dimensions.heightT10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconFoodsDt(
                  iconSize: Dimensions.icon24,
                  icon: Icons.remove,
                  backgroundColor: Colors.blue,
                  iconColor: Colors.white,
                ),
                BigText(
                  text: "\$10.000 " + " X " + " 0 ",
                  size: Dimensions.font26,
                ),
                IconFoodsDt(
                  iconSize: Dimensions.icon24,
                  icon: Icons.add,
                  backgroundColor: Colors.blue,
                  iconColor: Colors.white,
                )
              ],
            ),
          ),
          Container(
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
                    child: Icon(
                      Icons.favorite,
                      color: Colors.blue,
                    )),
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
        ],
      ),
    );
  }
}
