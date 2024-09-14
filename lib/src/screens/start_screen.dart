import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_app/src/components/heading_image.dart';
import 'package:my_flutter_app/src/screens/home_screen.dart';
import 'package:my_flutter_app/src/screens/terms_screen.dart';
import 'package:my_flutter_app/src/theme/app_theme.dart';
import 'package:my_flutter_app/src/utils/dimensions.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              const HeadingImage(
                  imagePath: 'assets/images/foto_start.jpg', title: 'Iniciar'),
              Text(
                'Inicie',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const Padding(
                padding: EdgeInsets.all(Dimensions.largePadding),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut molestie nisl nec elit vestibulum efficitur. Mauris a tincidunt turpis, vitae sagittis neque. Integer porttitor, dolor eu tristique porttitor, arcu est semper sapien, et pellentesque nisl mi a magna.',
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TermsScreen()));
                      },
                      child: const Text("Términos")),
                  const SizedBox(
                    width: Dimensions.smallPadding,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      child: const Text("Inicio")),
                ],
              )
            ])),
      ),
    );
  }
}
