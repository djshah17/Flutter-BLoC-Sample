class UserModel {
  int? id;
  String? name, email, phone, website;
  Address? address;
  Company? company;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.website,
    this.address,
    this.company
  });

  factory UserModel.fromJSON(Map<String, dynamic> parsedJson) =>  UserModel(
      id: parsedJson['id'],
      name: parsedJson['name'],
      email: parsedJson['email'],
      phone: parsedJson['phone'],
      website: parsedJson['website'],
      address: Address.fromJSON(parsedJson['address']),
      company: Company.fromJSON(parsedJson['company']),
    );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "phone": phone,
    "website": website,
    "address": address,
    "company": company,
  };

}

class Address {
  String? street, suite, city, zipcode;

  Address({this.street, this.suite, this.city, this.zipcode});

  factory Address.fromJSON(Map<String, dynamic> parsedJson) {
    return Address(
      street: parsedJson['street'],
      suite: parsedJson['suite'],
      city: parsedJson['city'],
      zipcode: parsedJson['zipcode'],
    );
  }
}

class Company {
  String? name, catchPhrase, bs;

  Company({this.name, this.catchPhrase, this.bs});

  factory Company.fromJSON(Map<String, dynamic> parsedJson) {
    return Company(
        name: parsedJson['name'],
        catchPhrase: parsedJson['catchPhrase'],
        bs: parsedJson['bs']);
  }
}