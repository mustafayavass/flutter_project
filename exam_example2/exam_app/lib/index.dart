import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  String _algoritma =
      "Algoritma, belli bir problemi çözmek veya belirli bir amaca ulaşmak için tasarlanan yol.Matematikte ve bilgisayar biliminde bir işi yapmak için tanımlanan, bir başlangıç durumundan başladığında, açıkça belirlenmiş bir son durumunda sonlanan, sonlu işlemler kümesidir. Genellikle bilgisayar programlamada kullanılır ve tüm programlama dillerinin temeli algoritmaya dayanır. Aynı zamanda algoritma tek bir problemi çözecek davranışın, temel işleri yapan komutların veya deyimlerin adım adım ortaya konulmasıdır ve bu adımların sıralamasına dikkat edilmelidir.";
  String _textfield = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Algoritma Nedir?",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('img/coder.jpg'),
              radius: 100,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              width: 400,
              child: Text(
                textAlign: TextAlign.justify,
                _algoritma,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                  color: Colors.red,
                  iconSize: 35,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                  color: Colors.green,
                  iconSize: 35,
                ),
              ],
            ),
            Container(
              width: 300,
              child: TextField(
                onChanged: _textChanged,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: _buttonclick,
              child: Text(
                "Değiştir",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            )
          ],
        ),
      ),
    );
  }

  void _textChanged(String newtext) {
    setState(() {
      _textfield = newtext;
    });
  }

  void _buttonclick() {
    setState(() {
      _algoritma = _textfield;
    });
  }
}
