import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wofi_mobile/page/PageUtama.dart';

class PageTentangKami extends StatefulWidget {
  const PageTentangKami({Key? key}) : super(key: key);
  static String? routeName = "/PageTentangKami";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<PageTentangKami> {
  String teks =
      "Karena Anda tidak perlu khawatir , setiap detail tentang acara perikahan Anda adalah perhatian dan tanggung jawab kami. Tim profesional kami siap melayani berbagai kebutuhan pernikah impian anda mulai persiapan acara hingga saat acara berlangsung.";

  final List<Map<String, dynamic>> _items = [
    {
      "id": "index",
      "title": "Mengapa Harus Kami?",
      "content":
          "Karena Anda tidak perlu khawatir , setiap detail tentang acara perikahan Anda adalah perhatian dan tanggung jawab kami. Tim profesional kami siap melayani berbagai kebutuhan pernikah impian anda mulai persiapan acara hingga saat acara berlangsung."
    },
    {
      "id": "index",
      "title": "Langkah Order",
      "content":
          """1. Memilih produk yang diinginkan, kemudian melakukan pemesanan 2. Admin akan mengkonfirmasi Anda melalui status pemesanan  "Diterima".3. Ketika status pemesanan “Diterima” maka Anda dapat melanjutkan pembayaran."""
    },
    {
      "id": "index",
      "title": "Syarat dan Kondisi",
      "content":
          "1. Kami berhak menggunakan foto Anda sebagai bagian promosi kami.\n2. Diluar kecamatan Ambulu, Jember dikenakan biaya transport.\n3. Uang yang sudah telah ditransfer tidak dapat dikembalikan kembali."
    },
    {
      "id": "index",
      "title": "Kontak Kami",
      "content": """Email        : Fannymanyun26@gmail.com
Instagram : fanny_makeupwedding
Tiktok       : fanny_makeup
Whatsapp : 082161171191 / 082244442422
Alamat      : Jl. Mangga Karang Templek, Ambulu, Kabupaten Jember, Jawa Timur"""
    }
  ];
  void _removeItem(int id) {
    setState(() {
      _items.removeWhere((element) => element['id'] == id);
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(milliseconds: 600),
        content: Text('Item with id #$id has been removed')));
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return Scaffold(
            body: ListView(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(PageUtama.routeName.toString());
                  },
                ),
                Text(
                  "Tentang Kami",
                  style: TextStyle(fontSize: 15.sp),
                )
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/about.png"),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: _items.length,
                physics: PageScrollPhysics(),
                itemBuilder: (_, index) {
                  final item = _items[index];
                  return Card(
                    key: PageStorageKey(item['id']),
                    color: Color.fromARGB(255, 229, 200, 202),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: ExpansionTile(
                        iconColor: Colors.black,
                        collapsedIconColor: Colors.black,
                        childrenPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        expandedCrossAxisAlignment: CrossAxisAlignment.end,
                        title: Text(
                          item['title'],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        children: [
                          Text(item['content'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                              )),
                          // This button is used to remove this item
                        ]),
                  );
                }),
          ],
        ));
      },
    );
  }
}
