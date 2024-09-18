public class SimpleCalculator {
    
    // Vulnerable method that performs addition
    public Integer add(String a, String b) {
        try {
            // Vulnerability: Converting string inputs directly to integers without validation
            Integer num1 = Integer.valueOf(a);
            Integer num2 = Integer.valueOf(b);
            return num1 + num2;
        } catch (Exception e) {
            // Catch any exception and return null (poor error handling)
            return null;
        }
    }

    // Vulnerable method that performs subtraction
    public Integer subtract(String a, String b) {
        try {
            // Vulnerability: No input validation
            Integer num1 = Integer.valueOf(a);
            Integer num2 = Integer.valueOf(b);
            return num1 - num2;
        } catch (Exception e) {
            return null;
        }
    }
    
    // Method with SOQL Injection vulnerability
    public List<Account> getAccountsByName(String accountName) {
        try {
            // Vulnerability: Directly inserting user input into SOQL query
            String query = 'SELECT Id, Name FROM Account WHERE Name = \'' + accountName + '\'';
            return Database.query(query);
        } catch (Exception e) {
            return null;
        }
    }
}
//added vulnerability

//vuln

