import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_provider_architecture_template/veiwmodels/splash_veiwmodel.dart';
import 'package:stacked/stacked.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, _) => Scaffold(
        body: Center(
            child: Text('Breaking News',
                style: GoogleFonts.aleo(
                    fontSize: 20, fontWeight: FontWeight.w700))),
      ),
    );
  }
}
