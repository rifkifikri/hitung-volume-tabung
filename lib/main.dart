import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyAppsku(),
    );
  }
}

class MyAppsku extends StatefulWidget {
  const MyAppsku({Key? key}) : super(key: key);

  @override
  
  State<MyAppsku> createState() => _MyAppskuState();
}

final List<int> colorCodes = <int>[600, 500, 100];
class _MyAppskuState extends State<MyAppsku> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController panjang = new TextEditingController();
  TextEditingController lebar = new TextEditingController();
  TextEditingController jari_jari = new TextEditingController();
  TextEditingController tinggi = new TextEditingController();
  TextEditingController nama = new TextEditingController();
  TextEditingController nbi = new  TextEditingController();

  var p,p1,l,l1,r,r1,t,t1,n,nim;
  
  void persegi_panjang(p,l,n,nim){
    var hasil = p*l;
    var nama =n, NBI =nim;

  if(hasil <=50){
      showDialog(context: context, builder: (BuildContext context) => AlertDialog(
      title: Text('Hasil Persegi panjang'),
      content: SizedBox(
        height: 200,
        child: Column(
          children: [
            Text('Nama Anda adalah : $nama'),
            Text ('NBI Anda adalah : $NBI'),
            Text('Luas Persegi Panjang : $hasil (Kecil)'),
          ],
        ),
      ),
      
    ));
  }else if(hasil >=50){
    showDialog(context: context, builder: (BuildContext context) => AlertDialog(
      title: Text('Hasil Persegi panjang'),
      content: SizedBox(
        height: 200,
        child: Column(
          children: [
            Text('Nama Anda adalah : $nama'),
            Text ('NBI Anda adalah : $NBI'),
            Text('Luas Persegi Panjang : $hasil  (LUAS)'),
          ],
        ),
      ),
      
    ));
  } 
  }
  void vol_tabung(r,t,n,nim){
    var hasil = 22/7*(r*r)*t;
    var nama =n, NBI =nim;

  if(hasil <=50){
      showDialog(context: context, builder: (BuildContext context) => AlertDialog(
      title: Text('Hasil Persegi panjang'),
      content: SizedBox(
        height: 200,
        child: Column(
          children: [
            Text('Nama Anda adalah : $nama'),
            Text ('NBI Anda adalah : $NBI'),
            Text('Volum Tabung : $hasil (Kecil)'),
          ],
        ),
      ),
      
    ));
  }else if(hasil >=50){
    showDialog(context: context, builder: (BuildContext context) => AlertDialog(
      title: Text('Hasil Persegi panjang'),
      content: SizedBox(
        height: 200,
        child: Column(
          children: [
            Text('Nama Anda adalah : $nama'),
            Text ('NBI Anda adalah : $NBI'),
            Text('Volume Tabung : $hasil  (LUAS)'),
          ],
        ),
      ),
      
    ));
  } 
  }

  void lingkaran(r){
    double hasil2 = 3.14*r*r;
    showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
      title: Text('Hasil Lingkaran '),
      content: Text('luas Lingkaran = $hasil2'),
    ));
  }
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UTS'),),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nama,
                  onChanged: (String nama){
                    n=nama;
                  },
                  decoration: InputDecoration(
                    label: Text('Input Nama'),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10))
                  ),
                  validator: (value) {
                        if (value!.isEmpty) {
                          return 'Nama tidak boleh kosong';
                        }
                        return null;
                      },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nbi,
                  onChanged: (String nbi){
                    nim=nbi;
                  },
                  decoration: InputDecoration(
                    label: Text('Input NBI'),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10))
                  ),
                  validator: (value) {
                        if (value!.isEmpty) {
                          return 'NBI tidak boleh kosong';
                        }
                        return null;
                      },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: panjang,
                  onChanged: (String panjang){
                    p=int.parse(panjang);
                  },
                  decoration: InputDecoration(
                    label: Text('Panjang'),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10))
                  ),
                  validator: (value) {
                        if (value!.isEmpty) {
                          return 'Input Panjang tidak boleh kosong';
                        }
                        return null;
                      },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: lebar,
                  onChanged: (String lebar){
                    l=int.parse(lebar);
                  },
                  decoration: InputDecoration(
                    label: Text('lebar'),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10))
                  ),
                  validator: (value) {
                        if (value!.isEmpty) {
                          return 'Input Lebar tidak boleh kosong';
                        }
                        return null;
                      },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: jari_jari,
                  onChanged: (String jari_jari){
                    r=int.parse(jari_jari);
                  },
                  decoration: InputDecoration(
                    label: Text('Jari - Jari'),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10))
                  ),
                  validator: (value) {
                        if (value!.isEmpty) {
                          return 'Input Jari Jari tidak boleh kosong';
                        }
                        return null;
                      },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: tinggi,
                  onChanged: (String tinggi){
                    t=int.parse(tinggi);
                  },
                  decoration: InputDecoration(
                    label: Text('Tinggi'),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10))
                  ),
                  validator: (value) {
                        if (value!.isEmpty) {
                          return 'Input Tinggi tidak boleh kosong';
                        }
                        return null;
                      },
                ),
              ),
              Container(
                child: Row(
                  
                  children: [
                    // ListView.builder(
                      
                    //   padding: const EdgeInsets.all(8),
                    //   itemBuilder: (BuildContext context, int index){
                    //     return Container(
                    //       height: 50,
                    //       color: Colors.amber[colorCodes[index]],
                    //       child: Center(child: ElevatedButton(onPressed: (){persegi_panjang(p,l);}, child: Text('Persegi panjang'))),
                    //     );
                    //   },
                    //  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                        if (_formKey.currentState!.validate()) {
                          vol_tabung(r,t,n,nim);}
                        }
                        , 
                        child: Text('Luas Tabung')),
                    ),
                  //   Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: ElevatedButton(onPressed: (){lingkaran(r);}, child: Text('Lingkaran')),
                  //   ),
                  //   Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: ElevatedButton(onPressed: (){}, child: Text('Segitiga')),
                  //   ),
                  //  Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: ElevatedButton(onPressed: (){}, child: Text('apa gitu')),
                  //    ),
                  ],
                ),
              )
            ],
          ),
        ),  
        ),
      ),
    );

  }
}
