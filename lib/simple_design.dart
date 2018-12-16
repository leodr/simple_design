library simple_design;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SimpleDesign {
  static final lightTheme = ThemeData(
      splashColor: Colors.blueAccent.withOpacity(0.15),
      textTheme: TextTheme(
          title: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          body1: TextStyle(fontSize: 16.0),
          body2: TextStyle(fontSize: 16.0, color: Colors.grey[800]),
          button: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          caption:
              TextStyle(fontSize: 16.0, color: Colors.black.withOpacity(0.5))),
      accentColor: Colors.blueAccent,
      accentColorBrightness: Brightness.dark,
      backgroundColor: Colors.grey[200],
      bottomAppBarColor: Colors.white,
      brightness: Brightness.light,
      buttonColor: Colors.blueAccent,
      buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          buttonColor: Colors.blueAccent,
          alignedDropdown: true,
          disabledColor: Colors.grey[400],
          height: 44.0,
          highlightColor: Colors.transparent,
          layoutBehavior: ButtonBarLayoutBehavior.constrained,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: BorderSide(style: BorderStyle.none))),
      highlightColor: Colors.transparent,
      disabledColor: Colors.grey[400],
      canvasColor: Colors.white,
      cardColor: Colors.white,
      cursorColor: Colors.blueAccent,
      dialogBackgroundColor: Colors.white,
      dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: BorderSide(style: BorderStyle.none))),
      dividerColor: Colors.transparent,
      errorColor: Colors.red[400],
      inputDecorationTheme: InputDecorationTheme(
        border: UnderlineInputBorder(),
        contentPadding: EdgeInsets.all(8.0),
        hasFloatingPlaceholder: false,
        errorMaxLines: 1,
        filled: false,
      ),
      indicatorColor: Colors.blueAccent,
      primaryColor: Colors.blueAccent,
      primaryColorBrightness: Brightness.light,
      primaryColorDark: Colors.blueAccent[400],
      primaryColorLight: Colors.blueAccent[100],
      scaffoldBackgroundColor: Colors.white,
      selectedRowColor: Colors.grey[200],
      sliderTheme: SliderThemeData(
          activeTrackColor: Colors.blueAccent,
          inactiveTrackColor: Colors.grey[400],
          disabledActiveTrackColor: Colors.grey[400],
          disabledInactiveTrackColor: Colors.grey[300],
          activeTickMarkColor: Colors.blueAccent,
          inactiveTickMarkColor: Colors.grey,
          disabledActiveTickMarkColor: Colors.grey[400],
          disabledInactiveTickMarkColor: Colors.grey[400],
          thumbColor: Colors.blueAccent,
          disabledThumbColor: Colors.grey[400],
          overlayColor: Colors.blueAccent.withOpacity(0.3),
          valueIndicatorColor: Colors.blueAccent,
          thumbShape: RoundSliderThumbShape(),
          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
          showValueIndicator: ShowValueIndicator.onlyForDiscrete,
          valueIndicatorTextStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
      fontFamily: "HK Grotesk",
      splashFactory: InkRipple.splashFactory,
      tabBarTheme: TabBarTheme(
          indicator: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.blueAccent,
                      width: 2.0,
                      style: BorderStyle.solid)),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment(0.0, 0.8),
                  colors: [
                    Colors.blueAccent.withOpacity(0.5),
                    Colors.blueAccent.withOpacity(0.0)
                  ])),
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.blueAccent,
          unselectedLabelColor: Colors.grey),
      textSelectionColor: Colors.blueAccent.withOpacity(0.5),
      textSelectionHandleColor: Colors.blueAccent,
      toggleableActiveColor: Colors.blueAccent,
      unselectedWidgetColor: Colors.grey[600]);

  static final darkTheme = ThemeData(
      splashColor: Colors.white.withOpacity(0.1),
      textTheme: TextTheme(
          title: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          body1: TextStyle(fontSize: 16.0),
          body2: TextStyle(fontSize: 16.0, color: Colors.grey[200]),
          button: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          caption:
              TextStyle(fontSize: 16.0, color: Colors.white.withOpacity(0.5))),
      accentColor: Colors.blueAccent,
      accentColorBrightness: Brightness.dark,
      backgroundColor: Colors.grey[800],
      bottomAppBarColor: Colors.grey[850],
      brightness: Brightness.dark,
      buttonColor: Colors.blueAccent,
      buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          buttonColor: Colors.blueAccent,
          alignedDropdown: true,
          disabledColor: Colors.grey[600],
          height: 44.0,
          highlightColor: Colors.transparent,
          layoutBehavior: ButtonBarLayoutBehavior.constrained,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: BorderSide(style: BorderStyle.none))),
      highlightColor: Colors.transparent,
      disabledColor: Colors.grey[600],
      canvasColor: Colors.grey[850],
      cardColor: Colors.grey[850],
      cursorColor: Colors.blueAccent,
      dialogBackgroundColor: Colors.grey[850],
      dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: BorderSide(style: BorderStyle.none))),
      dividerColor: Colors.transparent,
      errorColor: Colors.red[400],
      inputDecorationTheme: InputDecorationTheme(
        border: UnderlineInputBorder(),
        contentPadding: EdgeInsets.all(8.0),
        hasFloatingPlaceholder: false,
        errorMaxLines: 1,
        filled: false,
      ),
      indicatorColor: Colors.blueAccent,
      primaryColor: Colors.blueAccent,
      primaryColorBrightness: Brightness.light,
      primaryColorDark: Colors.blueAccent[400],
      primaryColorLight: Colors.blueAccent[100],
      scaffoldBackgroundColor: Colors.grey[850],
      selectedRowColor: Colors.grey[800],
      sliderTheme: SliderThemeData(
          activeTrackColor: Colors.blueAccent,
          inactiveTrackColor: Colors.grey[400],
          disabledActiveTrackColor: Colors.grey[400],
          disabledInactiveTrackColor: Colors.grey[300],
          activeTickMarkColor: Colors.blueAccent,
          inactiveTickMarkColor: Colors.grey,
          disabledActiveTickMarkColor: Colors.grey[400],
          disabledInactiveTickMarkColor: Colors.grey[400],
          thumbColor: Colors.blueAccent,
          disabledThumbColor: Colors.grey[400],
          overlayColor: Colors.blueAccent.withOpacity(0.3),
          valueIndicatorColor: Colors.blueAccent,
          thumbShape: RoundSliderThumbShape(),
          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
          showValueIndicator: ShowValueIndicator.onlyForDiscrete,
          valueIndicatorTextStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
      splashFactory: InkRipple.splashFactory,
      fontFamily: "HK Grotesk",
      tabBarTheme: TabBarTheme(
          indicator: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.blueAccent,
                      width: 2.0,
                      style: BorderStyle.solid)),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment(0.0, 0.8),
                  colors: [
                    Colors.blueAccent.withOpacity(0.5),
                    Colors.blueAccent.withOpacity(0.0)
                  ])),
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.blueAccent,
          unselectedLabelColor: Colors.grey[400]),
      textSelectionColor: Colors.blueAccent.withOpacity(0.5),
      textSelectionHandleColor: Colors.blueAccent,
      toggleableActiveColor: Colors.blueAccent,
      unselectedWidgetColor: Colors.grey[400]);
}

class SDAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final Widget leading;
  final List<Widget> actions;
  final PreferredSizeWidget bottom;
  final bool automaticallyImplyLeading;
  final Widget flexibleSpace;

  SDAppBar(
      {@required this.title,
      this.leading,
      this.actions,
      this.bottom,
      this.automaticallyImplyLeading: true,
      this.flexibleSpace});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Theme.of(context).brightness,
      bottom: bottom,
      centerTitle: true,
      automaticallyImplyLeading: automaticallyImplyLeading,
      flexibleSpace: flexibleSpace,
      leading: leading,
      title: title,
      elevation: 0.0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}

class SDSliverAppBar extends StatelessWidget {
  final Widget title;
  final Widget leading;
  final List<Widget> actions;
  final PreferredSizeWidget bottom;
  final bool automaticallyImplyLeading;
  final Widget flexibleSpace;
  final bool pinned;
  final bool floating;
  final bool snap;
  final double expandedHeight;

  SDSliverAppBar(
      {@required this.title,
      this.leading,
      this.actions,
      this.bottom,
      this.pinned: true,
      this.floating: false,
      this.expandedHeight: 0.0,
      this.snap: false,
      this.automaticallyImplyLeading: true,
      this.flexibleSpace});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      forceElevated: bottom != null,
      brightness: Theme.of(context).brightness,
      bottom: bottom,
      centerTitle: true,
      automaticallyImplyLeading: automaticallyImplyLeading,
      flexibleSpace: flexibleSpace,
      leading: leading,
      title: title,
      elevation: 1.0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      actions: actions,
      pinned: pinned,
      floating: floating,
      expandedHeight: expandedHeight,
      snap: snap,
    );
  }
}

class SDDialog extends StatelessWidget {
  final String title;
  final Widget content;
  final SDDismissButton dismissButton;
  final SDActionButton actionButton;
  final bool barrierDismissible;

  SDDialog(
      {@required this.title,
      this.barrierDismissible: false,
      this.content,
      this.dismissButton,
      this.actionButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Center(
        child: Material(
          elevation: 3.0,
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(4.0),
          color: Theme.of(context).dialogBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 24.0),
                child: content ?? SizedBox(),
              ),
              Container(
                color: Theme.of(context).backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: ButtonBar(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      dismissButton ?? SizedBox(),
                      actionButton ?? SizedBox()
                    ],
                  ),
                ),
              )
            ],
            mainAxisSize: MainAxisSize.min,
          ),
        ),
      ),
    );
  }
}

class SDDismissButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Icon icon;

  SDDismissButton({@required this.onPressed, this.title: "Cancel", this.icon});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: onPressed,
        textColor: Color.fromRGBO(
            255 - Theme.of(context).backgroundColor.red,
            255 - Theme.of(context).backgroundColor.green,
            255 - Theme.of(context).backgroundColor.blue,
            1.0),
        child: icon == null
            ? Text(title)
            : Row(
                children: <Widget>[icon, SizedBox(width: 4.0), Text(title)],
              ));
  }
}

class SDActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Icon icon;
  final Color color;

  SDActionButton(
      {@required this.onPressed, this.title: "Ok", this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        color: color ?? Theme.of(context).primaryColor,
        onPressed: onPressed,
        child: icon == null
            ? Text(title)
            : Row(
                children: <Widget>[icon, SizedBox(width: 4.0), Text(title)],
              ));
  }
}

class SDDivider extends StatelessWidget {
  final double height;

  SDDivider({this.height: 36.0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

class SDSectionHeader extends StatelessWidget {
  final String title;

  SDSectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Text(
        title.toUpperCase(),
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }
}

class SDCard extends StatelessWidget {
  final Widget mediaContent;
  final Widget content;
  final String title;
  final String subtitle;
  final List<Widget> actions;
  final Color backgroundColor;

  SDCard(
      {this.mediaContent,
      @required this.content,
      this.subtitle,
      this.title,
      this.actions,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          LimitedBox(
              maxHeight: 250.0,
              child: Row(
                children: <Widget>[
                  Expanded(child: mediaContent ?? SizedBox()),
                ],
              )),
          title != null
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.title,
                  ),
                )
              : SizedBox(),
          subtitle != null
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    subtitle,
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                )
              : SizedBox(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 20.0),
            child: content,
          ),
          actions != null
              ? Material(
                  color: Theme.of(context).backgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: ButtonBar(
                      mainAxisSize: MainAxisSize.max,
                      children: actions,
                    ),
                  ),
                )
              : SizedBox()
        ],
      ),
      color: backgroundColor ?? Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(4.0),
      clipBehavior: Clip.antiAlias,
      elevation: 1.0,
      shadowColor: Colors.black.withOpacity(0.5),
    );
  }
}
