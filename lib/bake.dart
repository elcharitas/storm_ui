import 'package:flutter/material.dart';
import 'package:storm_ui/widgets/buttons/rounded.dart';
import 'package:storm_ui/widgets/buttons/simple.dart';
import 'package:storm_ui/widgets/cards/square.dart';
import 'package:storm_ui/widgets/cards/side.dart';
import 'package:storm_ui/widgets/cards/simple.dart';
import 'package:storm_ui/widgets/navigation/drawer.dart';
import 'package:storm_ui/widgets/navigation/navbar.dart';
import 'package:styled_widget/styled_widget.dart';

void main() => runApp(Bake());

class Bake extends StatelessWidget {
  const Bake();

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: Navbar(),
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
