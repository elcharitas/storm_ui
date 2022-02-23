part of '../../storm_ui.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Icons icon;
  final List<Widget> items;
  final double height = 50.0;
  final Function getCurrentPage;
  final Color bgColor;

  Navbar(
      {this.title = "Storm UI",
      this.getCurrentPage,
      this.icon = null,
      this.items = null,
      this.bgColor = StormUIColors.white});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
            child: <Widget>[
      <Widget>[
        <Widget>[
          IconButton(
              onPressed: () {
                if (icon == null)
                  Scaffold.of(context).openDrawer();
                else
                  Navigator.pop(context);
              },
              icon: Icon(icon ?? Icons.menu)),
          Text(title).fontSize(13.0).padding(left: 8)
        ].toRow(),
        (items ?? <Widget>[])
            .toRow(mainAxisAlignment: MainAxisAlignment.spaceEvenly)
      ].toRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center),
    ].toColumn())
        .padding(left: 8.0, right: 8.0)
        .decorated(color: bgColor, boxShadow: [
      BoxShadow(
          color: StormUIColors.muted,
          spreadRadius: -10,
          blurRadius: 12,
          offset: Offset(0, 5))
    ]);
  }
}
