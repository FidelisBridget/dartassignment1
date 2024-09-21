void main() {
  // 1. List (ordered collection, allows duplicates)
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  
  // Add an item to the list
  fruits.add('Mango');
  
  // Remove an item from the list
  fruits.remove('Banana');
  
  // Iterate over the list
  print('List (fruits):');
  for (var fruit in fruits) {
    print(fruit);
  }
  
  // When to use a List:
  // - When order matters
  // - When duplicate values are allowed

  // 2. Set (unordered collection, unique elements)
  Set<String> cities = {'New York', 'Paris', 'Tokyo'};
  
  // Add an item to the set
  cities.add('London');
  
  // Attempt to add a duplicate (this will be ignored)
  cities.add('Paris');
  
  // Remove an item from the set
  cities.remove('Tokyo');
  
  // Iterate over the set
  print('\nSet (cities):');
  for (var city in cities) {
    print(city);
  }
  
  // When to use a Set:
  // - When uniqueness matters
  // - When you don't care about the order of elements

  // 3. Map (key-value pairs)
  Map<String, int> countryCodes = {
    'USA': 1,
    'India': 91,
    'Germany': 49
  };
  
  // Add a key-value pair to the map
  countryCodes['UK'] = 44;
  
  // Remove a key-value pair from the map
  countryCodes.remove('Germany');
  
  // Iterate over the map
  print('\nMap (country codes):');
  countryCodes.forEach((country, code) {
    print('$country: $code');
  });
  
  // When to use a Map:
  // - When you need to associate values with keys
  // - When you want fast lookups based on keys
}
