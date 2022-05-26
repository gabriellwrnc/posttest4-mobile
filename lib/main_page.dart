import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posttest4_1915026020_gabriel/alert_dialog.dart';
import 'package:posttest4_1915026020_gabriel/controller_getx.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() {
    var duration = Duration(seconds: 3);
    return Timer(duration, () {
      Get.off(LandingPage());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD80032),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo1.png",
              width: 90,
              height: 90,
            ),
            const Text(
              "AYO DONOR",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xffEDF2F4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heigt = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffEDF2F4),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: heigt / 4),
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/Palang.png")),
                ),
              ),
              const Text(
                "AYO DONOR",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD80032),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 70, right: 70, top: 10),
                child: Text(
                  "Aplikasi Screening untuk pendonor darah sebelum melakukan pendonoran darah \n by Gabriel D Lawrence",
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff8d99ae),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const MyButton(),
            ],
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.off(MainPage());
      },
      child: Container(
        margin: EdgeInsets.only(top: 200),
        width: 215,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xffEF233C),
        ),
        child: const Text(
          "Start Screening",
          style: TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
            color: Color(0xffEDF2F4),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/logo1.png",
              fit: BoxFit.contain,
              height: 28,
            ),
            const Text(
              "  AYO DONOR",
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
        backgroundColor: Color(0xffba0001),
      ),
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Selamat Datang, user",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Aplikasi ini akan memudahkan kamu melakukan screening tanpa perlu datang kerumah sakit atau tempat mendonorkan darah lainnya. Aplikasi ini juga akan menunjukkan kelayakanmu mendonorkan darah berdasarkan dari jawaban kamu di form screening kami.",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Jadi mohon mengisi dengan penuh tanggung jawab.",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      CustomAlert(context,
                          "Pastikan anda memasukkan data dengan benar");
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: tinggi / 6),
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xffEF233C),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              offset: Offset(6, 6),
                              blurRadius: 15,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-6, -6),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ]),
                      alignment: Alignment.center,
                      child: Text("Lakukan Screening",
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xff7f7f7f),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(LandingPage());
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.home, color: Colors.white),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.bloodtype, color: Color(0xffEF233C)),
                      Text(
                        "Education",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(NewProfilePage());
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.perm_contact_cal, color: Colors.white),
                        Text(
                          "Profile",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ScreeningPage extends StatefulWidget {
  const ScreeningPage({Key? key}) : super(key: key);

  @override
  State<ScreeningPage> createState() => _ScreeningPageState();
}

enum Survive { laki, perempuan, yes1, no1, yes2, no2, yes3, no3 }

class _ScreeningPageState extends State<ScreeningPage> {
  final controllerUmur = TextEditingController();
  final controllerBerat = TextEditingController();
  String hiv = "", umur = "", hiv1 = "", hepatitis = "";
  Survive? penyakit = Survive.yes1;
  Survive? pasangan1 = Survive.yes2;
  Survive? penyakit1 = Survive.yes3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/logo1.png",
              fit: BoxFit.contain,
              height: 28,
            ),
            Text(
              " AYO DONOR",
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
        backgroundColor: Color(0xffba0001),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: controllerUmur,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Umur",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: controllerBerat,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Berat Badan",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Apakah anda pernah mengidap HIV/AIDS : "),
              ),
              Row(
                children: [
                  Radio(
                      activeColor: Color(0xffba0001),
                      value: Survive.yes1,
                      groupValue: penyakit,
                      onChanged: (Survive? value) {
                        setState(() {
                          penyakit = value;
                        });
                        if (value == Survive.yes1) {
                          hiv = "Pernah";
                        }
                      }),
                  Text("Pernah"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      activeColor: Color(0xffba0001),
                      value: Survive.no1,
                      groupValue: penyakit,
                      onChanged: (Survive? value) {
                        setState(() {
                          penyakit = value;
                          if (value == Survive.no1) {
                            hiv = "Tidak Pernah";
                          }
                        });
                      }),
                  Text("Tidak Pernah"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                    "Apakah anda memiliki pasangan yg mengidap HIV/AIDS? : "),
              ),
              Row(
                children: [
                  Radio(
                      activeColor: Color(0xffba0001),
                      value: Survive.yes2,
                      groupValue: pasangan1,
                      onChanged: (Survive? value) {
                        setState(() {
                          pasangan1 = value;
                        });
                        if (value == Survive.yes2) {
                          hiv1 = "Pernah";
                        }
                      }),
                  Text("Pernah"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      activeColor: Color(0xffba0001),
                      value: Survive.no2,
                      groupValue: pasangan1,
                      onChanged: (Survive? value) {
                        setState(() {
                          pasangan1 = value;
                          if (value == Survive.no2) {
                            hiv1 = "Tidak Pernah";
                          }
                        });
                      }),
                  Text("Tidak Pernah"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                    "Apakah anda atau pasangan pernah melakukan kontak dengan seseorang yang memiliki hepatitis B atau C? : "),
              ),
              Row(
                children: [
                  Radio(
                      activeColor: Color(0xffba0001),
                      value: Survive.yes3,
                      groupValue: penyakit1,
                      onChanged: (Survive? value) {
                        setState(() {
                          penyakit1 = value;
                        });
                        if (value == Survive.yes3) {
                          hepatitis = "Pernah";
                        }
                      }),
                  Text("Pernah"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      activeColor: Color(0xffba0001),
                      value: Survive.no3,
                      groupValue: penyakit1,
                      onChanged: (Survive? value) {
                        setState(() {
                          penyakit1 = value;
                          if (value == Survive.no3) {
                            hepatitis = "Tidak Pernah";
                          }
                        });
                      }),
                  Text("Tidak Pernah"),
                ],
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffEF233C),
                  ),
                  onPressed: (() {}),
                  child: Text("Submit"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NewProfilePage extends StatelessWidget {
  NewProfilePage({Key? key}) : super(key: key);

  ControllerGet getController = Get.put(ControllerGet());
  final controllerNama = TextEditingController();
  final controllerAlamat = TextEditingController();
  final controllerGoldar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/logo1.png",
              fit: BoxFit.contain,
              height: 28,
            ),
            Text(
              " AYO DONOR",
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
        backgroundColor: Color(0xffba0001),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Masukkan data diri anda : ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: controllerNama,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nama",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: controllerAlamat,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Alamat",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: controllerGoldar,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Golongan Darah",
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffEF233C),
                  ),
                  onPressed: (() {
                    getController.nama.value = controllerNama.value.text;
                    getController.alamat.value = controllerAlamat.value.text;
                    getController.goldar.value = controllerGoldar.value.text;
                  }),
                  child: Text("Submit"),
                ),
              ),
              Text(
                "Data diri anda : ",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text("Nama anda : ${getController.nama}"),
              Text("Alamat anda di : ${getController.alamat}"),
              Text("Golongan darah anda : ${getController.goldar}"),
            ],
          ),
        ],
      ),
    );
  }
}
