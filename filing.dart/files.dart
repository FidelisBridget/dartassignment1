import 'dart:io';  // Required for file operations

void main() async {
  // Define file paths (change the paths based on your environment)
  String inputFilePath = 'input.txt';
  String outputFilePath = 'output.txt';

  try {
    // 1. Reading content from the input file
    File inputFile = File(inputFilePath);
    
    if (await inputFile.exists()) {
      String inputFileContent = await inputFile.readAsString();
      print('Content of input file:');
      print(inputFileContent);
    } else {
      throw FileSystemException('Input file not found', inputFilePath);
    }
    
    // 2. Writing new data to the output file
    File outputFile = File(outputFilePath);
    String newData = 'This is new data written to the output file.\n';

    // Using writeAsString to write data (overwrites the file if it exists)
    await outputFile.writeAsString(newData);

    // Append additional data to the file
    await outputFile.writeAsString('Additional data appended.\n', mode: FileMode.append);

    print('New data has been written to the output file.');
  } catch (e) {
    // Error handling for file operations
    if (e is FileSystemException) {
      print('FileSystemException: ${e.message}');
    } else {
      print('An error occurred: $e');
    }
  }
}

