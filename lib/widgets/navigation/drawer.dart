part of '../../storm_ui.dart';

class SimpleDrawer extends StatelessWidget {
  final String currentPage;

  SimpleDrawer({this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: <Widget>[
      Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.85,
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Image.asset("assets/imgs/now-logo.png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: IconButton(
                        icon: Icon(Icons.menu,
                            color: StormUIColors.white.withOpacity(0.82),
                            size: 24.0),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ),
                ],
              ),
            ),
          )),
      Expanded(
        flex: 2,
        child: ListView(
          padding: EdgeInsets.only(top: 36, left: 8, right: 16),
          children: [
            DrawerTile(
                icon: FontAwesomeIcons.home,
                onTap: () {
                  if (currentPage != "Home")
                    Navigator.pushReplacementNamed(context, '/home');
                },
                iconColor: StormUIColors.primary,
                title: "Home",
                isSelected: currentPage == "Home" ? true : false),
            DrawerTile(
                icon: FontAwesomeIcons.dharmachakra,
                onTap: () {
                  if (currentPage != "Components")
                    Navigator.pushReplacementNamed(context, '/components');
                },
                iconColor: StormUIColors.error,
                title: "Components",
                isSelected: currentPage == "Components" ? true : false),
            DrawerTile(
                icon: FontAwesomeIcons.newspaper,
                onTap: () {
                  if (currentPage != "Articles")
                    Navigator.pushReplacementNamed(context, '/articles');
                },
                iconColor: StormUIColors.primary,
                title: "Articles",
                isSelected: currentPage == "Articles" ? true : false),
            DrawerTile(
                icon: FontAwesomeIcons.user,
                onTap: () {
                  if (currentPage != "Profile")
                    Navigator.pushReplacementNamed(context, '/profile');
                },
                iconColor: StormUIColors.warning,
                title: "Profile",
                isSelected: currentPage == "Profile" ? true : false),
            DrawerTile(
                icon: FontAwesomeIcons.fileInvoice,
                onTap: () {
                  if (currentPage != "Account")
                    Navigator.pushReplacementNamed(context, '/account');
                },
                iconColor: StormUIColors.info,
                title: "Account",
                isSelected: currentPage == "Account" ? true : false),
            DrawerTile(
                icon: FontAwesomeIcons.cog,
                onTap: () {
                  if (currentPage != "Settings")
                    Navigator.pushReplacementNamed(context, '/settings');
                },
                iconColor: StormUIColors.success,
                title: "Settings",
                isSelected: currentPage == "Settings" ? true : false),
          ],
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
            padding: EdgeInsets.only(left: 8, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                    height: 4,
                    thickness: 0,
                    color: StormUIColors.white.withOpacity(0.8)),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 16, bottom: 8),
                  child: Text("DOCUMENTATION",
                      style: TextStyle(
                        color: StormUIColors.white.withOpacity(0.8),
                        fontSize: 13,
                      )),
                ),
                DrawerTile(
                    icon: FontAwesomeIcons.satellite,
                    iconColor: StormUIColors.muted,
                    title: "Getting Started",
                    isSelected:
                        currentPage == "Getting started" ? true : false),
              ],
            )),
      ),
    ].toColumn().decorated(color: StormUIColors.primary));
  }
}
