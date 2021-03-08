//  Label StoreMAX
//
//  Created by Anthony Gordon.
//  2021, WooSignal Ltd. All rights reserved.
//

//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:label_storemax/widgets/woosignal_ui.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
    this.title,
    this.action,
  }) : super(key: key);

  final String title;
  final void Function() action;

  @override
  Widget build(BuildContext context) => WooSignalButton(
        key: key,
        title: title,
        action: action,
        textStyle:
            Theme.of(context).primaryTextTheme.button.copyWith(fontSize: 16),
        bgColor: HexColor("#529cda"),
      );
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key key,
    this.title,
    this.action,
  }) : super(key: key);

  final String title;
  final void Function() action;

  @override
  Widget build(BuildContext context) => WooSignalButton(
        key: key,
        title: title,
        action: action,
        textStyle: Theme.of(context).primaryTextTheme.bodyText1.copyWith(
              color: Colors.black87,
            ),
        bgColor: HexColor("#f6f6f9"),
      );
}

class LinkButton extends StatelessWidget {
  const LinkButton({
    Key key,
    this.title,
    this.action,
  }) : super(key: key);

  final String title;
  final void Function() action;

  @override
  Widget build(BuildContext context) => WooSignalButton(
        key: key,
        title: title,
        action: action,
        textStyle: Theme.of(context).primaryTextTheme.bodyText1,
        bgColor: Colors.transparent,
      );
}

class WooSignalButton extends StatelessWidget {
  const WooSignalButton({
    Key key,
    this.title,
    this.action,
    this.textStyle,
    this.bgColor,
  }) : super(key: key);

  final String title;
  final void Function() action;
  final TextStyle textStyle;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            padding: EdgeInsets.all(8),
            elevation: 0,
            primary: bgColor,
            shadowColor: Colors.transparent),
        child: Text(
          title,
          style: textStyle,
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
        onPressed: action ?? null,
      ),
    );
  }
}
