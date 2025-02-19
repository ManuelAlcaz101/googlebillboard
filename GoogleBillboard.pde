public static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

public void setup() {            
    for (int i = 2; i < e.length() - 10; i++) { 
        String digits = e.substring(i, i + 10);
        double num = Double.parseDouble(digits);
        if (isPrime(num)) {
            System.out.println("First 10-digit prime: " + digits);
            break; 
        }
    }
    
    int f5 = EXTRA(5);
    System.out.println("f(5) = " + f5);
}  



public boolean isPrime(double num) {   
    if (num < 2) 
      return false; 
    for (int i = 2; i <= Math.sqrt(num); i++) {
        if (num % i == 0) 
          return false; 
    }
    return true; 
}

public int EXTRA(int n) {
    if (n == 0) 
      return 1;
    return n * EXTRA(n - 1);
}

