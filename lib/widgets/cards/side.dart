part of '../../storm_ui.dart';

class SideImageCard extends StatelessWidget {
  SideImageCard(
      {this.title = "Placeholder Title",
      this.cta = "",
      this.img = "https://via.placeholder.com/200",
      this.tap = defaultFunc});

  final String cta;
  final String img;
  final Function tap;
  final String title;

  static void defaultFunc() {
    print("the function works!");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        child: GestureDetector(
          onTap: tap,
          child: Card(
            elevation: 3,
            shadowColor: StormUIColors.muted.withOpacity(0.22),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              bottomLeft: Radius.circular(4.0)),
                          image: DecorationImage(
                            image: NetworkImage(img),
                            fit: BoxFit.cover,
                          ))),
                ),
                Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,
                              style: TextStyle(
                                  color: StormUIColors.text, fontSize: 12)),
                          Text(cta,
                              style: TextStyle(
                                  color: StormUIColors.primary,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
