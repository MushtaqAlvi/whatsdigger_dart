library whatsdigger;

import 'package:chaleno/chaleno.dart' as chaleno;

/// This Func Grab all the whatsapp groups linkes from given web page url and return set of grabbed linkes
/// For Example
///
/// Code:
///
///
///```
/// webDigger("https://www.whatsappgrouplinkes.com")
/// .then((values) {
///    print(values);
///  });
///```
///
///
/// this will print all group links fatched from that webpage
///
/// (very powerful fast and legend scrapper ... LOL)
//Simple to Grab
Future<Set<String>?> webDigger(String web_url) async {
  chaleno.Parser? parser = await chaleno.Chaleno().load(web_url);
  List<chaleno.Result>? x = parser?.getElementsByTagName("a");
  Set<String>? glinks = {};
  if (x?.length != null) {
    for (int looper = 0; looper < x!.length; looper++) {
      if (x.elementAt(looper).href != null) {
        if (x
            .elementAt(looper)
            .href!
            .contains('https://chat.whatsapp.com/invite/')) {
          glinks.add(x.elementAt(looper).href!);
        }
      }
    }
  }
  return glinks;
}

/// return map with group name and group picture link in future value callback
/// for example
///
/// Code:
///
///```
///  linkdigger("https://chat.whatsapp.com/invite/C4iHm4IROXQHGLio0eOSCv")
///      .then((values) {
///    print(values);
///  });
/// ```
///
/// this will print group name and group picture's

// ..class names..
//_8cit  group invite label
//_2yzk  group name
//_2z9j  group dp image

Future<Map<String, String>?> linkdigger(String group_link) async {
  Map<String, String> groupinfo = {'null': 'null'};
  chaleno.Parser? parser = await chaleno.Chaleno().load(group_link);
  List<chaleno.Result>? x = parser?.getElementsByClassName('_2yzk');
  if (x?.first.innerHTML!.isEmpty ?? true) {
    return groupinfo;
  } else {
    String gname = x!.first.innerHTML!;
    x = parser?.getElementsByClassName('_2z9j');

    String linkSpan = x!.first.attr("style") ?? "null";
    String dplink = 'null';
    if (linkSpan.length != 4) {
      dplink = linkSpan.replaceAll('amp;', '');
      dplink = dplink.replaceRange(0, 22, '');
      dplink = dplink.replaceRange(dplink.length - 1, dplink.length, '');
    }

    groupinfo = {gname: dplink};
    return groupinfo;
  }
}

/// gets a whatsapp group link and returns its id
///
/// like:
///
/// gets----->  https://chat.whatsapp.com/invite/C4iHm4IROXQHGLio0eOSCv
///
/// returns-->  C4iHm4IROXQHGLio0eOSCv
///
/// removes-->  https://chat.whatsapp.com/invite/
///
/// note: group link must be full and valid in length
/// otherwise it returns string as it is was input
///
/// logic code:
/// ```
/// if string.length <= 34
/// return string
/// if string.lenth > 34
/// return string.replaceRange(0, 34, '');
///
/// ```
/// cut off first 33 chracters. simple nah...LOL
///
///
///
/// Why this?
///
/// Helpful when working with huge list of links
/// to save in less chracter space or maybe any other use.
// just strip the link
String getGroupID(String link) {
  if (link.length <= 34) {
    return link;
  } else {
    return link.replaceRange(0, 34, '');
  }
}

///returns link without group id
///
///simple as
///
///```
///return "https://chat.whatsapp.com/invite/";
///```
// not a big joke
String getLinkHead() {
  return "https://chat.whatsapp.com/invite/";
}
