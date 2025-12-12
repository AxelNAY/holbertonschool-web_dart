String longestUniqueSubstring(String str) {
  int maxLength = 0;
  int start = 0;
  int maxStart = 0;
  Map<String, int> charIndex = {};
  
  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    
    if (charIndex.containsKey(char) && charIndex[char]! >= start) {
      start = charIndex[char]! + 1;
    }
    
    charIndex[char] = i;
    
    if (i - start + 1 > maxLength) {
      maxLength = i - start + 1;
      maxStart = start;
    }
  }
  
  return str.substring(maxStart, maxStart + maxLength);
}
