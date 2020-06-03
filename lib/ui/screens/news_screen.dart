import 'package:flutter/material.dart';
import 'package:my_provider_architecture_template/ui/widgets/state_responsive.dart';
import 'package:my_provider_architecture_template/veiwmodels/news_veiwmodel.dart';
import 'package:stacked/stacked.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewsViewModel>.reactive(
        builder: (context, model, _) => Scaffold(
            body: StateResponsive(
                state: model.state,
                busyWidget: Center(child: CircularProgressIndicator()),
                idleWidget: ListView.builder(
                    itemBuilder: (context, index) => ListTile(
                      leading: Icon(Icons.person),
                      title: Text(model.list[index].title),
                      subtitle: Text(model.list[index].duration),
                    )))),
        viewModelBuilder: () => NewsViewModel(),
        onModelReady: (model) => model.init());
  }
}
