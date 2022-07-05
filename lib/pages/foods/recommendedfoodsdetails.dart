import 'package:e_commerce_food/utils/dimension.dart';
import 'package:e_commerce_food/widgets/bigtext.dart';
import 'package:flutter/material.dart';

class RecommendedFood extends StatelessWidget {
  const RecommendedFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.heightT15),
              child: Container(
                color: Colors.white,
                child: Center(
                    child: BigText(
                        size: Dimensions.font17, text: "The Chef House")),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                    top: Dimensions.heightT10, bottom: Dimensions.heightT10),
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
            child: Container(
              margin: EdgeInsets.only(
                  left: Dimensions.widthT20, right: Dimensions.widthT20),
              child: Text(
                  "Continuando con esta acepción, es común hablar de platos regionales, por ejemplo, para englobar todas las recetas que pertenecen a un determinado lugar geográfico, así como platos internacionales para hablar de comidas que proceden de diferentes partes del mundo. El uso de dichas expresiones es normal en casas de comida y hoteles, entre otros establecimientos en los cuales se ofrezca el servicio de restauración a los clientes. Un plato es un recipiente cóncavo y por lo general redondeado que dispone de un borde y que se utiliza para servir la comida. Lo habitual es que, una vez preparados los alimentos, se sirvan en platos y que éstos sean llevados a la mesa para que la gente pueda comer en ellos.Continuando con esta acepción, es común hablar de platos regionales, por ejemplo, para englobar todas las recetas que pertenecen a un determinado lugar geográfico, así como platos internacionales para hablar de comidas que proceden de diferentes partes del mundo. El uso de dichas expresiones es normal en casas de comida y hoteles, entre otros establecimientos en los cuales se ofrezca el servicio de restauración a los clientes. Un plato es un recipiente cóncavo y por lo general redondeado que dispone de un borde y que se utiliza para servir la comida. Lo habitual es que, una vez preparados los alimentos, se sirvan en platos y que éstos sean llevados a la mesa para que la gente pueda comer en ellos.Continuando con esta acepción, es común hablar de platos regionales, por ejemplo, para englobar todas las recetas que pertenecen a un determinado lugar geográfico, así como platos internacionales para hablar de comidas que proceden de diferentes partes del mundo. El uso de dichas expresiones es normal en casas de comida y hoteles, entre otros establecimientos en los cuales se ofrezca el servicio de restauración a los clientes. Un plato es un recipiente cóncavo y por lo general redondeado que dispone de un borde y que se utiliza para servir la comida. Lo habitual es que, una vez preparados los alimentos, se sirvan en platos y que éstos sean llevados a la mesa para que la gente pueda comer en ellos."),
            ),
          )
        ],
      ),
    );
  }
}
