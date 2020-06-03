import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConfirmDialog extends StatelessWidget {
  final VoidCallback onDenied;
  final VoidCallback onConfirmed;
  final String title;
  final String description;
  final String buttonTitle;

  const ConfirmDialog({
    Key key,
    @required this.title,
    @required this.description,
    @required this.onDenied,
    @required this.onConfirmed,
    this.buttonTitle,
  })  : assert(title != null),
        assert(description != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    //final local = AppLocalizations.of(context);

    return WillPopScope(
      onWillPop: () async {
        if (onDenied != null) {
          onDenied();
        }
        return false;
      },
      child: AlertDialog(
        title: Text(title),
        content: Text(description),
        actions: <Widget>[
          FlatButton(
            child: Text("Cancel"),
            onPressed: () {
              if (onDenied != null) {
                onDenied();
              }
            },
          ),
          FlatButton(
            child: Text(buttonTitle ?? "Confirm"),
            onPressed: () {
              if (onDenied != null) {
                onConfirmed();
              }
            },
          ),
        ],
      ),
    );
  }
}
