class User {

  int _id;
  String _name;
  String _lastName;
  String _password;
  String _nickName;
  String _role;

  User();

  getId() => this._id;
  getName() => this._name;
  getLastName() => this._lastName;
  getPassword() => this._password;
  getNickName() => this._nickName;
  getRole() => this._role;

  void setId(int id) {
    _id = id;
  }

  void setName(String name) {
    _name = name;
  }

  void setLastName(String lastName) {
    _lastName = lastName;
  }

  void setPassword(String password) {
    _password = password;
  }

    void setNickName(String nickName) {
    _nickName = nickName;
  }

  void setRole(String role) {
    _role = role;
  }

  Map<String, dynamic> toJson() => {
    "id": _id,
    "nombre": _name,
    "apellido": _lastName,
    "contrasena": _password,
    "alias": _nickName,
    "rol": _role
  };

}