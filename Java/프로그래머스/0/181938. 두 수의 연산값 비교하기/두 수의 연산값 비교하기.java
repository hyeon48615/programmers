class Solution {
    public int solution(int a, int b) {
        int r1 = Integer.parseInt("" + a + b);
        int r2 = 2 * a * b;
        
        // return r1 >= r2 ? r1 : r2;
        
        return Math.max(r1, r2);
    }
}