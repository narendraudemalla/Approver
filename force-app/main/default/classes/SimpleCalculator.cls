public class SimpleCalculator {
    
    // Method that performs addition with input validation
    public Integer add(String a, String b) {
        // Validate inputs
        if (!isValidNumber(a) || !isValidNumber(b)) {
            return null; // Return null if inputs are invalid
        }
        
        try {
            Integer num1 = Integer.valueOf(a);
            Integer num2 = Integer.valueOf(b);
            return num1 + num2;
        } catch (NumberFormatException e) {
            // Log the error
            System.debug('Error: Invalid number format - ' + e.getMessage());
            return null; // Return null in case of an error
        }
    }
    
    // Helper method to validate if a string is a valid number
    private Boolean isValidNumber(String input) {
        if (String.isNotBlank(input)) {
            try {
                Integer.valueOf(input);
                return true;
            } catch (NumberFormatException e) {
                // Log error message for invalid input
                System.debug('Invalid number format: ' + e.getMessage());
            }
        }
        return false;
    }
}
