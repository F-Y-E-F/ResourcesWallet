import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ResourcesScreen extends StatefulWidget {
  const ResourcesScreen({Key? key}) : super(key: key);

  @override
  _ResourcesScreenState createState() => _ResourcesScreenState();
}

class _ResourcesScreenState extends State<ResourcesScreen> {
  final materialScaffoldGlobalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        material: (_, __) => MaterialScaffoldData(
            widgetKey: materialScaffoldGlobalKey,
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              label: const Text('Add resource'),
              icon: const Icon(Icons.add),
            ),
            drawer: const Drawer(
              child: Text("ESSSA"),
            )),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: const Icon(
                      Icons.menu_rounded,
                      color: Colors.black,
                      size: 40,
                    ),
                    onTap: () =>
                        materialScaffoldGlobalKey.currentState!.openDrawer(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Resource Wallet",
                    style: platformThemeData(
                      context,
                      material: (data) =>
                          data.textTheme.headline3!.copyWith(fontSize: 32),
                      cupertino: (data) => data.textTheme.navTitleTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "An app contains the best resources for programmers and designers",
                    style: platformThemeData(
                      context,
                      material: (data) =>
                          data.textTheme.headline5!.copyWith(fontSize: 15),
                      cupertino: (data) => data.textTheme.actionTextStyle,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
