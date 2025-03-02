// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart'; // สำหรับเปิดลิงก์
//

// class BeautyTipsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF795548), // สีพื้นหลังม่วง
//       body: SafeArea(
//         child: Column(
//           children: [
//             // ส่วน AppBar ที่กำหนดเอง
//             Container(
//               margin: EdgeInsets.fromLTRB(20, 20, 20, 20), // ระยะห่างจากขอบหน้าจอ
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: Color(0xFFE0F7FA), // สีชมพูอ่อน (พื้นหลัง AppBar)
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     IconButton(
//                       icon: Icon(Icons.menu, color: Colors.black),
//                       onPressed: () {
//                         // TODO: Implement Menu Functionality
//                       },
//                     ),
//                     Text(
//                       'GLAMORA',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.person_outline, color: Colors.black),
//                       onPressed: () {
//                         // TODO: Implement Profile Functionality
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       // หัวข้อ "Beauty Tips"
//                       Row(
//                         children: <Widget>[
//                           Icon(Icons.content_cut, color: Colors.white),
//                           SizedBox(width: 10),
//                           Text(
//                             'Beauty Tips',
//                             style: TextStyle(
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//
//                       // รายการ Beauty Tips
//                       BeautyTipItem(
//                         title: 'มัดรวม 6 กันแดด ใช้แล้วชอบ งานผิวสวย จึ้ง!',
//                         imageUrl: 'assets/images/sunscreen.jpg', // แทนที่ด้วย path ที่ถูกต้อง
//                         articleUrl: 'https://www.wongnai.com/beauty-tips/top-sunscreen', // แทนที่ด้วย URL บทความ
//                       ),
//                       SizedBox(height: 20),
//
//                       BeautyTipItem(
//                         title: 'แชร์ 6 สกินแคร์ กู้หน้าสิว คืนหน้าใส!',
//                         imageUrl: 'assets/images/skincare.jpg', // แทนที่ด้วย path ที่ถูกต้อง
//                         articleUrl: 'https://www.jeban.com/topic/317250', // แทนที่ด้วย URL บทความ
//                       ),
//                       SizedBox(height: 20),
//
//                       BeautyTipItem(
//                         title: 'Spring Tone Makeup',
//                         imageUrl: 'assets/images/makeup.jpg', // แทนที่ด้วย path ที่ถูกต้อง
//                         articleUrl: 'https://sistacafe.com/summaries/97847', // แทนที่ด้วย URL บทความ
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // Widget สำหรับแต่ละรายการ Beauty Tip
// class BeautyTipItem extends StatelessWidget {
//   final String title;
//   final String imageUrl;
//   final String articleUrl;
//
//   const BeautyTipItem({
//     Key? key,
//     required this.title,
//     required this.imageUrl,
//     required this.articleUrl,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () async {
//         // เปิด URL บทความเมื่อกด
//         if (await canLaunchUrl(Uri.parse(articleUrl))) {
//           await launchUrl(Uri.parse(articleUrl));
//         } else {
//           throw 'Could not launch $articleUrl';
//         }
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white.withOpacity(0.8),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         padding: EdgeInsets.all(15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.asset(
//                 imageUrl,
//                 width: double.infinity,
//                 height: 150,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 IconButton(
//                   icon: Icon(Icons.favorite_border, color: Colors.red),
//                   onPressed: () {
//                     // TODO: Implement Add to Favorite Functionality
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class BeautyTipsPage extends StatelessWidget {
  final List<Map<String, String>> tips = [
    {
      "title": "มัดรวม 6 กันแดด ใช้แล้วชอบ งานผิวสวย",
      "description": "สวัสดีทุกคนนน วันนี้จะมาเปิดกรุ 6 กันแดดที่ใช้แล้วชอบ...",
      "image": "assets/images/sunscreen_tips.jpg",
    },
    {
      "title": "แชร์ 6 สกินแคร์ กู้หน้าสิว คืนหน้าใส",
      "description": "แชร์ 6 สกินแคร์ กู้หน้าสิว คืนหน้าใส ด้วยตัวเอง...",
      "image": "assets/images/skincare_tips.jpg",
    },
    {
      "title": "⭐ Spring Tone Makeup",
      "description": "แต่งหน้าปังเป็นธรรมชาติแบบสาวตะวันตก...",
      "image": "assets/images/spring_makeup.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF77407F), // พื้นหลังม่วง
      appBar: AppBar(
        backgroundColor: Color(0xFF77407F),
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.content_cut, size: 28, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Beauty Tips",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: tips.length,
          itemBuilder: (context, index) {
            return _buildBeautyTipCard(tips[index]);
          },
        ),
      ),
    );
  }

  Widget _buildBeautyTipCard(Map<String, String> tip) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                tip["image"]!,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tip["title"]!,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Text(
                    tip["description"]!,
                    style: TextStyle(color: Colors.black54),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                // ฟังก์ชันกดปุ่มหัวใจ
              },
            ),
          ],
        ),
      ),
    );
  }
}
