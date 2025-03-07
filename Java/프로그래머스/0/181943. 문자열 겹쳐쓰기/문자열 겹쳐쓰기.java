class Solution {
    public String solution(String my_string, String overwrite_string, int s) {
        // String answer = "";
        
        // for(int i=0; i<my_string.length(); i++) {
        //    if(i == s) {
        //        answer += overwrite_string;
        //        i += overwrite_string.length()-1;
        //        continue;
        //    } 
        //    answer += my_string.charAt(i);
        // }
        
        // return answer;
        
        String before = my_string.substring(0, s);
        String after = my_string.substring(s + overwrite_string.length());
        return before + overwrite_string + after;
    }
}