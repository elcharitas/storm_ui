import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:storm_ui/constants/colors.dart';

typedef SimpleButtonCallback = dynamic Function(String eventName);

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    Widget this.child = const Text("Storm UI"),
    double this.width = double.infinity,
    Color this.textColor = StormUIColors.white,
    Color this.color = StormUIColors.primary,
    ButtonStyle this.style = null,
    SimpleButtonCallback this.on = null
  });

  final Widget child;
  final double width;
  final Color color;
  final Color textColor;
  final ButtonStyle style;
  final SimpleButtonCallback on;

  static void onPressedCallback({SimpleButtonCallback callback: null, eventName: null}){
    if(callback != null){
      callback(eventName);
    }
  }

  Widget build(BuildContext context){
    return
      SizedBox(
          width: width,
          child: ElevatedButton(
              child: this.child,
              onPressed: () => SimpleButton.onPressedCallback(callback: this.on, eventName: "pressed"),
              onLongPress: () => SimpleButton.onPressedCallback(callback: this.on, eventName: "long-press"),
              onFocusChange: (change) => SimpleButton.onPressedCallback(callback: this.on, eventName: "focus"),
              onHover: (change) => SimpleButton.onPressedCallback(callback: this.on, eventName: "focus"),
              style: this.style ?? ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(this.color),
                  foregroundColor: MaterialStateProperty.all(this.textColor),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12, horizontal: 8)),
              ),
          )
              .padding(horizontal: 16, vertical: 12)
      );
  }
}
