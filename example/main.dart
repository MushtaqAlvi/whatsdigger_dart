import 'package:whatsdigger/whatsdigger.dart';

void main(List<String> args) async {
  // String glink1 = "https://chat.whatsapp.com/5YvZfDDRvKs0pMeRPyDKHE";
  String link = "https://wishthisyear.com/";
  // String link2 = "https://realgrouplinks.com/";
  // String glink = "https://whatsgrouplink.com/";
  // String glink = "https://chat.whatsapp.com/5YvZfDDRvKs0pMeRPyDKHE";
  // String glink1 = "https://chat.whatsapp.com/EO99euhlC7hFzA3CNdUSla";

  // webDigger(link).then((value) {
  //   print(value);
  // });2

  webDigger(link).then((values) {
    print(values);
  });

  getGroupID('a');

  linkdigger("https://chat.whatsapp.com/invite/C4iHm4IROXQHGLio0eOSCv")
      .then((values) {
    print(values);
  });

  getLinkHead();

  print('end of main code');
}
