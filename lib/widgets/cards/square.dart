import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:storm_ui/constants/colors.dart';

class CardSquare extends StatelessWidget {
  CardSquare({
    Widget this.title = const Text(""),
    Widget this.cta = const Text(""),
    Color this.color = null,
    this.img = "assets/imgs/storm_ui.png",
    this.tap = defaultFunc
  });

  final Widget cta;
  final Widget title;
  final Color color;
  final String img;
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
      ).flexible(flex: 3),
      <Widget>[
        title,
        cta.padding(top: 8.0)
      ].toColumn(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
      ).padding(all: 16.0)
          .flexible(flex: 1)
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
  Widget build2(BuildContext context) {
    return Container(
        height: 250,
        width: null,
        child: GestureDetector(
          onTap: tap,
          child: Card(
              elevation: 3,
              shadowColor: StormUIColors.muted.withOpacity(0.22),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                      flex: 3,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0)),
                              image: DecorationImage(
                                image: NetworkImage(img),
                                fit: BoxFit.cover,
                              )))),
                  Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 9.0, bottom: 10.0, left: 16.0, right: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(title,
                            //     style: TextStyle(
                            //         color: StormUIColors.text, fontSize: 12)),
                            // Text(cta,
                            //     style: TextStyle(
                            //         color: StormUIColors.primary,
                            //         fontSize: 11,
                            //         fontWeight: FontWeight.w600))
                          ],
                        ),
                      ))
                ],
              )),
        ));
  }
}
