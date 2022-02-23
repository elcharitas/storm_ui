import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'storm_ui.dart';

void main() => runApp(Bake());

class Bake extends StatelessWidget {
  const Bake();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: Navbar(
            items: [],
          ),
          drawer: SimpleDrawer(currentPage: "Home"),
          body: SingleChildScrollView(
            child: <Widget>[
              SimpleImageCard(),
              SideImageCard(),
              CardSquare(),
              RoundedButton(child: const Text("Rounded")),
              SimpleButton(child: const Text("Simple")),
            ].toColumn(),
          )),
    );
  }
}
