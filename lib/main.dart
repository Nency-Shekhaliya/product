import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyCupertinoapp(),
  );
}

class MyCupertinoapp extends StatefulWidget {
  const MyCupertinoapp({Key? key}) : super(key: key);

  @override
  State<MyCupertinoapp> createState() => _MyCupertinoappState();
}

class _MyCupertinoappState extends State<MyCupertinoapp> {
  TimeOfDay currenttime = TimeOfDay.now();
  TimeOfDay? Selectedtime;
  DateTime data = DateTime.now();
  List month = [
    'Jan',
    'Feb',
    'Mar',
    'April',
    'May',
    'June',
    'July',
    'Aug',
    'Sept',
    'Oct',
    'Nov',
    'Dec',
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          border: Border.all(color: CupertinoColors.white),
          backgroundColor: CupertinoColors.white,
          padding: const EdgeInsetsDirectional.all(7),
        ),
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: "Products"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.cart), label: "Cart"),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    CupertinoNavigationBar(
                      backgroundColor: CupertinoColors.white,
                      middle: Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Cupertino Store",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                    ),
                    Mylistbox(
                        Image:
                            "https://navbharattimes.indiatimes.com/thumb/msid-94563112,imgsize-109666,width-540,height-405,resizemode-75/best-women-handbags-on-amazon-94563112.jpg",
                        name: "Purse",
                        rs: "₹ 1700"),
                    Mylistbox(
                        Image:
                            "https://img.etimg.com/photo/msid-96878326/yellow-chimes-gold-plated-chains-for-men.jpg",
                        name: "Chain",
                        rs: "₹ 250"),
                    Mylistbox(
                        Image:
                            "https://cdn.shopify.com/s/files/1/1223/0734/products/melissa-dangling-earrings-earrings-blingvine-405128_750x.jpg?v=1642122331",
                        name: "Earrings",
                        rs: "₹ 690"),
                    Mylistbox(
                        Image:
                            "https://www.reliancedigital.in/medias/Noise-Colorfit-Pro-2-Smart-Watch-491900986-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wyNjA4Mzd8aW1hZ2UvanBlZ3xpbWFnZXMvaGYwL2g4MS85NTkxODIwNTUwMTc0LmpwZ3xkMWQwOTQ2ZWRlNDJkZTlmN2MzNTdkZWVkZDM0MDgzODIxNGQ5MzYwMzliNWQwMWVmMzM1NjgwZGNiZTY0ZDg0",
                        name: "Watch",
                        rs: "₹ 1050"),
                    Mylistbox(
                        Image:
                            "https://upload.wikimedia.org/wikipedia/commons/e/e5/Flacon_Manifesto.jpg",
                        name: "Perfume",
                        rs: "₹ 1550"),
                    Mylistbox(
                        Image:
                            "https://kinclimg6.bluestone.com/f_jpg,c_scale,w_1024,b_rgb:f0f0f0/giproduct/BICM0308R05_RAA18DIG6XXXXXXXX_ABCD00-PICS-00001-1024-53003.png",
                        name: "Ring",
                        rs: "₹ 680"),
                    Mylistbox(
                        Image:
                            "http://cdn.shopify.com/s/files/1/0251/5179/9349/products/batch_1N8A8032.jpg?v=1655458495",
                        name: "Kurta",
                        rs: "₹ 1200"),
                  ],
                ),
              );
            } else if (index == 1) {
              return Column(
                children: [
                  CupertinoNavigationBar(
                    backgroundColor: CupertinoColors.white,
                    middle: Container(
                      padding: const EdgeInsets.only(left: 6, right: 6),
                      height: 30,
                      width: 330,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              CupertinoIcons.search,
                              color: Colors.grey,
                              size: 22,
                            ),
                          ),
                          Expanded(
                              flex: 9,
                              child: Text(
                                "Rin",
                                style: TextStyle(fontSize: 14),
                              )),
                          Expanded(
                            flex: 1,
                            child: Icon(
                              CupertinoIcons.clear_thick_circled,
                              color: Colors.grey,
                              size: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Mylistbox(
                      Image:
                          "https://kinclimg6.bluestone.com/f_jpg,c_scale,w_1024,b_rgb:f0f0f0/giproduct/BICM0308R05_RAA18DIG6XXXXXXXX_ABCD00-PICS-00001-1024-53003.png",
                      name: "Ring",
                      rs: "₹ 680"),
                ],
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    CupertinoNavigationBar(
                      backgroundColor: CupertinoColors.white,
                      middle: Container(
                        padding: const EdgeInsets.only(left: 6, right: 6),
                        height: 30,
                        width: 330,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text(
                          "Shopping Cart",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Textbox(icon: CupertinoIcons.person_alt, text: "Name"),
                    Textbox(icon: Icons.email, text: "Email"),
                    Textbox(icon: Icons.location_on_sharp, text: "Location"),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 30,
                      width: 330,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            flex: 1,
                            child: Icon(
                              CupertinoIcons.time,
                              color: CupertinoColors.systemGrey2,
                              size: 20,
                            ),
                          ),
                          const Expanded(
                            flex: 3,
                            child: Text(
                              "Delivery time",
                              style: TextStyle(
                                color: CupertinoColors.systemGrey2,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Text(
                              "${month[data.month]} ${data.day}, ${data.year} ${data.hour}:${data.minute}",
                              style: const TextStyle(
                                  color: CupertinoColors.systemGrey2),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: CupertinoDatePicker(
                                initialDateTime: DateTime.now(),
                                onDateTimeChanged: (val) {
                                  setState(() {
                                    data = val;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                    Mylistbox(
                        Image:
                            "https://upload.wikimedia.org/wikipedia/commons/e/e5/Flacon_Manifesto.jpg",
                        name: "Perfume",
                        rs: "₹ 1550"),
                    Mylistbox(
                        Image:
                            "https://kinclimg6.bluestone.com/f_jpg,c_scale,w_1024,b_rgb:f0f0f0/giproduct/BICM0308R05_RAA18DIG6XXXXXXXX_ABCD00-PICS-00001-1024-53003.png",
                        name: "Ring",
                        rs: "₹ 680"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text("Shipping : ₹100/-"),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text("Tax : ₹203/-"),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Total : ₹2533/-",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
              ;
            }
          },
        ),
      ),
    );
  }

  Mylistbox(
          {required String Image, required String name, required String rs}) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 80,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 80,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(Image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: CupertinoColors.opaqueSeparator.withOpacity(0.5),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name),
                      Text(
                        rs,
                        style: const TextStyle(
                            fontSize: 14, color: CupertinoColors.systemGrey),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 60),
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: CupertinoColors.opaqueSeparator.withOpacity(0.5),
                      ),
                    ),
                  ),
                  child: const Icon(CupertinoIcons.add_circled),
                ),
              ),
            ],
          ),
        ),
      );
  Textbox({required IconData icon, required String text}) => Container(
        margin: const EdgeInsets.only(top: 10),
        height: 30,
        width: 330,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Icon(
                icon,
                color: CupertinoColors.systemGrey2,
                size: 20,
              ),
            ),
            Expanded(
              flex: 8,
              child: Text(
                text,
                style: const TextStyle(
                  color: CupertinoColors.systemGrey2,
                ),
              ),
            )
          ],
        ),
      );
}
