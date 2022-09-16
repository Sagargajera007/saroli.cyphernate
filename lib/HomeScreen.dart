import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saroli/stock%20transfer/First_Page.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  List<Color> colors = [
    Color(0xffFEDEDF),
    Color(0xffFFEAC3),
    Color(0xffCEE7D4),
    Color(0xffFFFCCF),
    Color(0xffF8DEFE),
    Color(0xffCED3E7),
    Color(0xffDEFEDF),
    Color(0xffC3E9FF),
    Color(0xffEFD9D9),
    Color(0xffFEDEDF),
    Color(0xffCEE7D4),
    Color(0xffFFEAC3),
    Color(0xffF8DEFE)
  ];

  List icons = [
    "assets/icons/manufacturing 1.png",
    "assets/icons/delivery 1.png",
    "assets/icons/dashboard 1.png",
    "assets/icons/human-resources 1.png",
    "assets/icons/stadistics 1.png",
    "assets/icons/inventory 1.png",
    "assets/icons/location 1.png",
    "assets/icons/distribution 1.png",
    "assets/icons/color-wheel 1.png",
    "assets/icons/crm 1.png",
    "assets/icons/analytics 1.png",
    "assets/icons/cargo 1.png",
    "assets/icons/web 1.png",
  ];

  List titles = [
    "Stock Transfer",
    "Plant to Plant Transfer",
    "Subcontracting Goods Issue - MTS",
    "Subcontracting Goods Issue - MTO",
    "Stock Counting",
    "Cutting Process",
    "Delivery - Batch Allocation",
    "Delivery Creation",
    "Shade Card Process",
    "My Customer 360 Report",
    "My Sales Order Report",
    "Goods Receipt for Purchase Order",
    "Sales Order Creation"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text("VIKAS",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                  color: Color(0xff363636))),
        ),
        iconTheme: IconThemeData(color: Colors.black, size: 30),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: colors.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return firstpage();
                      },));
                    },
                      child: Container(
                          decoration: BoxDecoration(
                              color: colors[index],
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Column(
                              children: [
                                Image.asset(
                                  icons[index],
                                  height: 40,
                                  width: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 8, right: 8),
                                  child: Text(
                                    titles[index],
                                    textAlign: TextAlign.center,
                                    maxLines: 3,
                                    style: GoogleFonts.poppins(fontSize: 9),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
