# String Operations Demonstration Program

# 1. String Concatenation
string1 = "Hello"
string2 = "World"
concatenated_string = string1 + " " + string2
print(f"Concatenation: {concatenated_string}")

# 2. String Interpolation
name = "Alice"
age = 30
interpolated_string = f"Name: {name}, Age: {age}"
print(f"Interpolation: {interpolated_string}")

# 3. Substring Extraction
substring = concatenated_string[6:11]  # Extract 'World' from 'Hello World'
print(f"Substring extraction: {substring}")

# 4. Case Conversion (Uppercase and Lowercase)
uppercase_string = concatenated_string.upper()
lowercase_string = concatenated_string.lower()
print(f"Uppercase: {uppercase_string}")
print(f"Lowercase: {lowercase_string}")

# 5. Reverse the string
reversed_string = concatenated_string[::-1]
print(f"Reversed: {reversed_string}")

# 6. Count the length of the string
string_length = len(concatenated_string)
print(f"Length: {string_length}")
