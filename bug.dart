```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON string
      final jsonData = jsonDecode(response.body);
       //This line throws an error if jsonData is not a list
      final dataList = jsonData as List; 
      // Process the data
      print(dataList);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```