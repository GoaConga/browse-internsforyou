import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:internsforyou/theme/main_theme.dart';
import 'utils/initial_bindings.dart';
import 'utils/localization/app_localization.dart';
import 'utils/routes/app_routes.dart';

void main() => runApp(const InternApp());

class InternApp extends StatelessWidget {
  const InternApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: IFYTheme.darktheme,
      debugShowCheckedModeBanner: false,
      translations: AppLocalization(),
      locale: const Locale('en', 'US'),
      title: 'Interns For You',
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.viewInternship,
      getPages: AppRoutes.pages,
      localizationsDelegates: const [
        FormBuilderLocalizations.delegate
      ],
    );
  }
}
