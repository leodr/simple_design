# simple_design

A simple design library for Flutter.

This package includes:
- Premade themes, dark and light brightness
- Several custom Simple Design widgets, serving the original design idea.

Link to the example images: https://imgur.com/a/duatQYT

For general design advice I used the Material Design Specifications from material.io.

## SDAppBar and SDSliverAppBar

These two widgets are meant to be used instead of the regular AppBar/SliverAppBar.
They use certain styling that otherwise would have to be applied to every AppBar in
your app.

They are customizable with title, leading, actions, bottom, automaticallyImplyLeading
and flexibeSpace. The other values are not customizable to not negatively impact the
appearance of your app.

![SDAppBar and SDSliverAppBar](https://i.imgur.com/Mh7btbo.jpg)

## SDDialog with SDDismissButton and SDActionButton

This is a custom dialog and should be used in the showDialog() method instead of
AlertDialog or SimpleDialog. It can be given values for title, content, a SDDismissButton
for a dismiss button, a SDActionButton for an action button and a bool barrierDismissable,
which is not yet working.

The SDDismissButton and SDActionButton should be self-explaining.

![SDDialog with SDDismissButton and SDActionButton](https://i.imgur.com/uDETYMG.jpg)

## SDDivider and SDSectionHeader

Designed for the use in Colums and Lists, the SDDivider provides a vertical padding of 36.0
pixels, which is recommended, but can be customized with the height property.

The SDSectionHeader is to be used below a SDDivider to announce the title of a new section,
as it can be seen in the example application.

![SDSectionHeader](https://i.imgur.com/DF9O8Ok.jpg)

## SDCard

The SDCard widget is a highly customizable card, with options for mediaContent, content, title,
subtitle, actions and backgroundColor. It has a slight shadow underneath and is best used in
Colums and Lists.

![SDCard](https://i.imgur.com/ScrMJAH.jpg)