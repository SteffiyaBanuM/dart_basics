void main() {
  // Find the Average Price of given prices
  List<int> prices = [100, 200, 300, 100, 200, 400];
  int total = prices.fold(0, (int sum, int currentPrice) => sum + currentPrice);
  double average = (total / prices.length);
  print("Average :$average");

  //We have 2 price List , merge both of them in single list and remove the duplicates
  List<int> price1 = [1, 2, 3];
  List<int> price2 = [4, 5, 1, 2, 3, 4];
  List<int> result = [...price1, ...price2];
  print("With duplicates : $result");
  result = result.toSet().toList();
  print("Duplicates removed  : $result");
}
