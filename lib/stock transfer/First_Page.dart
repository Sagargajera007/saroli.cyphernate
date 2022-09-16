import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {

  TextEditingController tdate = TextEditingController();
  TextEditingController tlocation = TextEditingController();
  TextEditingController tremark = TextEditingController();
  TextEditingController tqr = TextEditingController();

  int batch = 0;
  double qauntity = 0.00;

  List<Map<String, Object?>> l = [
    {
      "no": 1,
      "batch1": 0123456789,
      "material": "LIZA_GRGT_STP_289_1234",
      "plant": 1001,
      "sl": 150,
      "qty": 70.680000,
    },
    {
      "no": 2,
      "batch1": 0123456789,
      "material": "LIZA_GRGT_STP_289_1234",
      "plant": 1001,
      "sl": 150,
      "qty": 70.680000,
    },
    {
      "no": 3,
      "batch1": 0123456789,
      "material": "LIZA_GRGT_STP_289_1234",
      "plant": 1001,
      "sl": 150,
      "qty": 70.680000,
    },
    {
      "no": 4,
      "batch1": 0123456789,
      "material": "LIZA_GRGT_STP_289_1234",
      "plant": 1001,
      "sl": 150,
      "qty": 70.680000,
    },
    {
      "no": 5,
      "batch1": 0123456789,
      "material": "LIZA_GRGT_STP_289_1234",
      "plant": 1001,
      "sl": 150,
      "qty": 70.680000,
    },
  ];

  var remark = ["surat", "yogichowk", "puna", "simada", "motavaracha"];

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            // shadowColor: Colors.transparent,
            title: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text("Stock Transfer",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff363636))),
            ),
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: Text(
                        "Date",
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 137,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "To Storage Location",
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Card(
                          child: SizedBox(
                            // width: 160,
                            height: 50,
                            child: TextFormField(
                              controller: tdate,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  isDense: true,
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide.none,
                                  ),
                                  suffixIcon: Container(
                                    height: 50,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Color(0xffDDDDDD),
                                    ),
                                    child: IconButton(
                                        onPressed: () async {
                                          DateTime? pickedDate = await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              //get today's date
                                              firstDate: DateTime(2000),
                                              //DateTime.now() - not to allow to choose before today.
                                              lastDate: DateTime(2101));
                                          if (pickedDate != null) {
                                            print(pickedDate);
                                            String formattedDate =
                                            DateFormat('dd-MM-yyyy').format(
                                                pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                                            print(
                                                formattedDate); //formatted date output using intl package =>  2022-07-04
                                            //You can format date as per your need

                                            setState(() {
                                              tdate.text =
                                                  formattedDate.toString();
                                            });
                                          } else {
                                            print("Date is not selected");
                                          }
                                        },
                                        icon: Icon(
                                          Icons.calendar_month_outlined,
                                          color: Colors.black,
                                          size: 25,
                                        )),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Card(
                          child: SizedBox(
                            // width: 165,
                            height: 50,
                            child: TextFormField(
                                controller: tlocation,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                    suffixIcon: Container(
                                      height: 50,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Color(0xffDDDDDD),
                                      ),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.cloud_upload_outlined,
                                            color: Colors.black,
                                            size: 25,
                                          )),
                                    ))),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: Text(
                        "Remark:",
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: Card(
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          new Expanded(
                              child: new TextField(
                                controller: tremark,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: "Enter Remark...",
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              )),
                          new PopupMenuButton<String>(
                            icon: const Icon(Icons.arrow_drop_down),
                            onSelected: (String value) {
                              tremark.text = value;
                            },
                            itemBuilder: (BuildContext context) {
                              return remark
                                  .map<PopupMenuItem<String>>((String value) {
                                return new PopupMenuItem(
                                    child: SizedBox(
                                        width: 600, child: new Text(value)),
                                    value: value);
                              }).toList();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: Text(
                        "QR Text",
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: Card(
                    child: SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: tqr,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: "CT00124",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: Container(
                            height: 50,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Color(0xffDDDDDD),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.qr_code_scanner_outlined,
                                  color: Colors.black,
                                  size: 30,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Card(
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffCDE4FF),
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      child: Text(
                                        "$batch",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff0065DC),
                                            fontSize: 25),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Total No of Batch",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff3592FF),
                                            fontSize: 13),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Card(
                            child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFE8E8),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, top: 10),
                                        child: Text(
                                          "$qauntity",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffFF3F3F),
                                              fontSize: 25),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Total Batch Qauntity",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xffFF8585),
                                              fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "No",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        "Batch",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 25),
                        child: Text(
                          "Material",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        "Plant",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "SL",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Qty",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    height: 180,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: l.length,
                      itemBuilder: (context, index) {
                        Map m = l[index];
                        return Row(
                          children: [
                            Container(
                              height: 50,
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 12, right: 15),
                                    child: Container(
                                      width: 10,
                                      child: Text(
                                        "${m['no']}",
                                        style: GoogleFonts.poppins(fontSize: 10),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "${m['batch1']}",
                                      style: GoogleFonts.poppins(fontSize: 10),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                    child: Container(
                                      width: 90,
                                      child: Text(
                                        "${m['material']}",
                                        maxLines: 2,
                                        style: GoogleFonts.poppins(fontSize: 10),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "${m['plant']}",
                                      style: GoogleFonts.poppins(fontSize: 10),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 17),
                                    child: Container(
                                      child: Text(
                                        "${m['sl']}",
                                        style: GoogleFonts.poppins(fontSize: 10),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 12, right: 6),
                                    child: Container(
                                      width: 30,
                                      child: Text(
                                        "${m['qty']}",
                                        maxLines: 2,
                                        style: GoogleFonts.poppins(fontSize: 10),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 50,
                                    child: MaterialButton(
                                      elevation: 0,
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text("Delete"),
                                              content: Text(
                                                  "are you sure want to delete this contact"),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);

                                                      print(m['no']);
                                                      setState(() {
                                                        l.removeAt(index);
                                                      });
                                                    },
                                                    child: Text("Yes")),
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text("No"))
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      color: Color(0xffFFDCDC),
                                      child: Icon(
                                        Icons.delete_outline_outlined,
                                        color: Color(0xffFF6C6C),
                                        size: 20,
                                      ),
                                      padding: EdgeInsets.all(5),
                                      shape: CircleBorder(),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "POST",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStatePropertyAll(Color(0xff9896F8))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}

