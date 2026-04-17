String longestUniqueSubstring(String str) {
    int start = 0;
    int bestStart = 0;
    int bestLength = 0;
    Map<String, int> seen = {};

    for (int end = 0; end < str.length; end++) {
        String char = str[end];
        if (seen.containsKey(char) && seen[char]! >= start) {
            start = seen[char]! + 1;
        }
        seen[char] = end;
        if (end - start + 1 > bestLength) {
            bestLength = end - start + 1;
            bestStart = start;
        }
    }
    return str.substring(bestStart, bestStart + bestLength);
}
