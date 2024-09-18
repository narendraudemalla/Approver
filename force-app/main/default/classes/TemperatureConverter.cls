public class TemperatureConverter {

    // Convert Celsius to Fahrenheit
    public Double celsiusToFahrenheit(Double celsius) {
        // Validate input
        if (celsius == null) {
            throw new IllegalArgumentException('Celsius value cannot be null.');
        }
        // Convert to Fahrenheit
        return (celsius * 9 / 5) + 32;
    }

    // Convert Fahrenheit to Celsius
    public Double fahrenheitToCelsius(Double fahrenheit) {
        // Validate input
        if (fahrenheit == null) {
            throw new IllegalArgumentException('Fahrenheit value cannot be null.');
        }
        // Convert to Celsius
        return (fahrenheit - 32) * 5 / 9;
    }

    // Custom exception class for specific error handling
    public class IllegalArgumentException extends Exception {}
}
//d