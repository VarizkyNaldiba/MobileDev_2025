void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    1: 'helium',
    2: 'neon',
    3: 2,
  };

  // print(gifts);
  // print(nobleGases);

  //tambahan

  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';
  // error karna kesalahan pemanggilan variable, seharusnya mhs1 bukan gifts
  var mhs2 = Map<String, String>();
  mhs2['first'] = 'helium';
  mhs2['second'] = 'neon';
  mhs2['fifth'] = 'argon';

  
  var mhs3 = Map<String, String>();
  mhs3['Name'] = 'Varizky Naldiba Rimra';
  mhs3['Age'] = '22';
  mhs3['NIM'] = '2341720243';
  mhs3['Prodi'] = 'Teknik Informatika';

  print(mhs3);

}