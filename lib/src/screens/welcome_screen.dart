import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_app/src/components/heading_image.dart';
import 'package:my_flutter_app/src/screens/start_screen.dart';
import 'package:my_flutter_app/src/theme/app_theme.dart';
import 'package:my_flutter_app/src/utils/dimensions.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
              /*
          Stack(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.asset('assets/images/foto_welcome.jpg', fit: BoxFit.cover),
              ),
              Positioned(
                bottom: Dimensions.mediumPadding,
                right: Dimensions.mediumPadding,
                child:
                Text("Bienvenido", style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: AppColors.onPrimary))
              )
              
            ],
          ),
          */
              const HeadingImage(
                  imagePath: 'assets/images/foto_welcome.jpg',
                  title: 'Bienvenido'),
              Text(
                'Loki',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const Padding(
                padding: EdgeInsets.all(Dimensions.largePadding),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut molestie nisl nec elit vestibulum efficitur. Mauris a tincidunt turpis, vitae sagittis neque. Integer porttitor, dolor eu tristique porttitor, arcu est semper sapien, et pellentesque nisl mi a magna.',
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(Dimensions.mediumPadding),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const StartScreen()));
                        },
                        child: const Text("Empezar")),
                  ))
            ])),
      ),
    );
  }
}
