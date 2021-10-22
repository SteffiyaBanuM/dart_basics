class StringOperations {
  String properCase(String name) {
    if (name.length > 0) {
      List splittedName = name.split(" ");
      var resName;
      for (var i = 0; i < splittedName.length; i++) {
        resName = (resName == null)
            ? capitalize(splittedName[i])
            : resName + " " + capitalize(splittedName[i]);
      }
      return resName;
    }

    return "Name not entered";
  }

  String capitalize(String name) =>
      name[0].toUpperCase() + name.substring(1).toLowerCase();
}
