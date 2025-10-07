// // // // // // // void cetakNama(String depan, String belakang) {
// // // // // // //   print("Nama lengkap: $depan $belakang");
// // // // // // // }

// // // // // // // void main() {
// // // // // // //   cetakNama("Budi", "Santoso"); 
// // // // // // // }

// // // // // // void sapa(String nama, [String? gelar]) {
// // // // // //   print("Halo $nama ${gelar ?? ""}");
// // // // // // }

// // // // // // void main() {
// // // // // //   sapa("Rizky");          
// // // // // //   sapa("Rizky", "S.Kom"); 
// // // // // // }

// // // // // void cetakInfo({String? nama, int? umur}) {
// // // // //   print("Nama: $nama, Umur: $umur");
// // // // // }

// // // // // void main() {
// // // // //   cetakInfo(nama: "Rizky", umur: 16); 
// // // // // }

// // // // void hitungLuas({required int panjang, required int lebar}) {
// // // //   print("Luas: ${panjang * lebar}");
// // // // }

// // // // void main() {
// // // //   hitungLuas(panjang: 5, lebar: 3); 
// // // // }

// // // void sapa(String nama) {
// // //   print("Halo, $nama!");
// // // }

// // // void main() {
// // //   var fn = sapa;   
// // //   fn("Uda"); 
// // // }

// // void main() {
// //   var sapa = (String nama) {
// //     print("Halo, $nama!");
// //   };

// //   sapa("Uda"); 
// // }


// void main() {
//   var pesan = "Halo dari main";

//   void tampilPesan() {
//     print(pesan); 
//   }

//   tampilPesan(); 
// }

List<int> hitung(int a, int b) {
  return [a + b, a - b, a * b];
}

void main() {
  var hasil = hitung(6, 3);
  print("Tambah: ${hasil[0]}, Kurang: ${hasil[1]}, Kali: ${hasil[2]}");
  
}
