import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internsforyou/models/student/student.dart';
import 'package:internsforyou/screens/browse/controller.dart';
import 'package:internsforyou/screens/browse/widgets/intern_tile.dart';
import 'package:internsforyou/theme/ify_custom_theme.dart';
import 'package:internsforyou/utils/routes/app_routes.dart';


class BrowseInternScreen extends GetView<BrowseController> {
  const BrowseInternScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Browsing Interns', style: IFYFonts.introHeader),
          centerTitle: true,
          backgroundColor: IFYColors.accentRed,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: RefreshIndicator(
              onRefresh: () { throw Exception('Test');},           
              child: ListView.builder(
                clipBehavior: Clip.hardEdge,
                itemCount: 10,
                itemBuilder: (BuildContext context, index) {
                  //return InternWidget(intern: Student(score: 100-(0+index*5)));
                  return InternTile(intern: Student(score: 100-(0+index*5))); //TODO: Draw from actual list of students.
                }
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: IFYColors.accentRed,
          child: const Icon(Icons.search),
        ),
        drawer: Drawer(
          backgroundColor: IFYColors.backgroundGrey,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: IFYColors.accentRed
                ),
                child: Text('Interns For You', style: IFYFonts.introHeader,)
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.search, color: Colors.white,),
                title: Text('Browse', style: IFYFonts.imageButtonText,),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.manage_accounts, color: Colors.white,),
                title: Text('My Account', style: IFYFonts.imageButtonText,),
              ),
              const Divider(),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.exit_to_app, color: Colors.white,),
                title: Text('Sign Out', style: IFYFonts.imageButtonText,),
              )
            ],
          ),
        ),
      )
    );
  }
}