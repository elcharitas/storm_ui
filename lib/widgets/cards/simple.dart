import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class SimpleImageCard extends StatelessWidget {
  SimpleImageCard({
      Widget this.title = const Text("Placeholder"),
      Widget this.cta = null,
      this.img = "assets/imgs/storm_ui.png",
      this.color = null,
      this.tap = defaultFunc
  });

  final Widget cta;
  final Widget title;
  final String img;
  final Color color;
  final Function tap;

  static void defaultFunc() {
    print("the function works!");
  }

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0)),
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover,
              ))
      ).flexible(flex: 11),
      <Widget>[
        title,
        cta.padding(top: 8.0)
      ].toColumn(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
      ).padding(all: 16.0)
      .flexible(flex: 9)
      ].toColumn(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,)
        .gestures(onTap: tap)
        .height(255)
        .flexible()
        .card(
          elevation: 3,
          color: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0))
        )
    );
  }
}
