<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

This is Whatsapp Group links checker and scrapper from websites or web pages having group links in html code ,
like some websites share such kind of group links collections.

You can use this like just a simple dart CLI application or in flutter implementation whatever you want.

## Features

Grab all the whatsapp group linkes from any webpage just by website link , a set of all the links
Get group related information like group name and group display picture's direct link , a group info gathering
get group link header
split id from full group link
user friendly and error handler

## Getting started

Just you have to include this package in dependencies of pubspec.yaml file and after that use functions from this file . 
just call them and pass parameters if needed.

## Usage

Scrap all the group links located in a web page , just that  web page url is required.


For Example : 


```dart

webDigger("https://wishthisyear.com/").then((values) {
print(values);
});
```

Get Information about specifig whatsapp group like Group name and Display Picture's direct link

```dart
linkdigger("https://chat.whatsapp.com/invite/C4iHm4IROXQHGLio0eOSCv")
      .then((values) {
    print(values);
  });
```



To get Group ID from link:

```dart
  getGroupID('https://chat.whatsapp.com/invite/C4iHm4IROXQHGLio0eOSCv');
```


This was a starting intro  ... have a nice journey 

