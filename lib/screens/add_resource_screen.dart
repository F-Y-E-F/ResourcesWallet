import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class AddResourceScreen extends StatefulWidget {
  const AddResourceScreen({Key? key}) : super(key: key);

  @override
  _AddResourceScreenState createState() => _AddResourceScreenState();
}

class _AddResourceScreenState extends State<AddResourceScreen> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: SafeArea(
        child: Column(
          children: const [Text("ESSA")],
        ),
      ),
    );
  }
}
