class News {

  String _date;
  String _name;
  String _user;
  String _image;

  News();

  getDate() => this._date;
  getName() => this._name;
  getUser() => this._user;
  getImage() => this._image;

  void setDate(String date) {
    _date = date;
  }
  
  void setName(String name) {
    _name = name;
  }

  void setUser(String user) {
    _user = user;
  }

  void setImage(String image) {
    _image = image;
  }

}