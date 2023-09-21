void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'six': 'Naufal Falah Wafiuddin',
    'seven': 2141720129
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    20: 'Naufal Falah Wafiuddin',
    30: 2141720129
  };
  // print(nobleGases.length);

  // print(gifts);
  // print(nobleGases);

  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';
  mhs1['six'] = 'Naufal Falah Wafiuddin';
  mhs1['seven'] = '2141720129';

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';
  mhs2[36] = 'Naufal Falah Wafiuddin';
  mhs2[54] = '2141720129';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
