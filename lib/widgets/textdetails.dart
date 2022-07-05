import 'package:e_commerce_food/utils/dimension.dart';
import 'package:e_commerce_food/widgets/smalltext.dart';
import 'package:flutter/material.dart';

class TextDetails extends StatefulWidget {
  final String text;

  const TextDetails({Key? key, required this.text}) : super(key: key);

  @override
  State<TextDetails> createState() => _TextDetailsState();
}

class _TextDetailsState extends State<TextDetails> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 4.5;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              size: Dimensions.font14, color: Colors.black, text: firstHalf)
          : Column(
              children: [
                SmallText(
                    size: Dimensions.font14,
                    color: Colors.black,
                    text: hiddenText
                        ? (firstHalf + "...")
                        : (firstHalf + secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        size: Dimensions.font14,
                        text: hiddenText ? "Mostar más" : "Mostar menos",
                        color: Colors.blue,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
