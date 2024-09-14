import 'package:flutter/material.dart';
import 'package:my_flutter_app/src/utils/dimensions.dart';
import 'package:my_flutter_app/src/utils/app_colors.dart';

class HeadingImage extends StatelessWidget {
  final String imagePath;
  final String title;
  const HeadingImage({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.asset(imagePath, fit: BoxFit.cover),
        ),
        Positioned(
            bottom: Dimensions.mediumPadding,
            right: Dimensions.mediumPadding,
            child: Text(title,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: AppColors.onPrimary)))
      ],
    );
  }
}
