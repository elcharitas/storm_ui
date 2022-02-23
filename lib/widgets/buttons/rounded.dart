part of '../../storm_ui.dart';

/**
 * 
 */
class RoundedButton extends SimpleButton {
  const RoundedButton(
      {Widget child,
      width: double.infinity,
      Color color: StormUIColors.primary,
      Color textColor: StormUIColors.white})
      : super(child: child, width: width, color: color, textColor: textColor);

  Widget build(BuildContext context) {
    return SimpleButton(
      child: this.child,
      width: this.width,
      color: this.color,
      textColor: this.textColor,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(this.color),
          foregroundColor: MaterialStateProperty.all(this.textColor),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 12, horizontal: 8)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(18.0, 18.0))))),
    );
  }
}
