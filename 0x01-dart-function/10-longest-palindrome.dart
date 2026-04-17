import '9-palindrome.dart';

String longestPalindrome(String s) {
    String longest = 'none';

    for (int length = s.length; length >= 3; length--) {
        for (int start = 0; start <= s.length - length; start++) {
            String sub = s.substring(start, start + length);
            if (isPalindrome(sub)) {
                return sub;
            }
        }
    }
    return longest;
}
