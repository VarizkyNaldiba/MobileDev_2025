# Praktikum 7

#### 1. Kenapa Code ini error?
```
return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
);
```
> Karena methode autosize belum terdefined untuk widget, autosize saya ganti ke text 

#### hasil praktikum 1 
![alt text](images\Praktikum1.png)

## Tugas Praktikum

1. Jelaskan maksud dari langkah 2 pada praktikum tersebut!
> plugin jika di pyhton sama dengan library, di dart import pluginnya dengan flutter pub add

2. Jelaskan maksud dari langkah 5 pada praktikum tersebut!
>  untuk menginisialisasi variable text dan widget pada file

3. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!
> pada container 1 menggunakan widget buatan sendiri yaitu redwidget dengan implementasi plugin auto_size_text , sedangkan container 2 menggunakan widget bawan flutter "Text" tanpa gaya tambahan

4. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi ini !
- text = untuk menampilkan teks 
- style = gaya teks seperti warna, ukuran, jenis font
- maxlines = maksimal baris dari teks yang ditampilkan, pada code 2 baris, maka akan menampilkan 2 abris saja
- overflow = teks yang diluar batas maxlines akan ditampilkan dalam bentuk ...
