@isTest
private class TemperatureConverterTest {

    @isTest
    static void testCelsiusToFahrenheit_Success() {
        // Test a valid Celsius to Fahrenheit conversion
        TemperatureConverter converter = new TemperatureConverter();
        
        // Test normal conversion
        Double result = converter.celsiusToFahrenheit(0.0);
        System.assertEquals(32.0, result, '0 Celsius should be 32 Fahrenheit.');
        
        result = converter.celsiusToFahrenheit(100.0);
        System.assertEquals(212.0, result, '100 Celsius should be 212 Fahrenheit.');
    }

    @isTest
    static void testCelsiusToFahrenheit_NullInput() {
        // Test null input for Celsius to Fahrenheit
        Boolean exceptionThrown = false;
        try {
            TemperatureConverter converter = new TemperatureConverter();
            converter.celsiusToFahrenheit(null);
        } catch (TemperatureConverter.IllegalArgumentException e) {
            exceptionThrown = true;
        }
        System.assert(exceptionThrown, 'Expected an IllegalArgumentException to be thrown for null input.');
    }

    @isTest
    static void testFahrenheitToCelsius_Success() {
        // Test a valid Fahrenheit to Celsius conversion
        TemperatureConverter converter = new TemperatureConverter();
        
        // Test normal conversion
        Double result = converter.fahrenheitToCelsius(32.0);
        System.assertEquals(0.0, result, '32 Fahrenheit should be 0 Celsius.');
        
        result = converter.fahrenheitToCelsius(212.0);
        System.assertEquals(100.0, result, '212 Fahrenheit should be 100 Celsius.');
    }

    @isTest
    static void testFahrenheitToCelsius_NullInput() {
        // Test null input for Fahrenheit to Celsius
        Boolean exceptionThrown = false;
        try {
            TemperatureConverter converter = new TemperatureConverter();
            converter.fahrenheitToCelsius(null);
        } catch (TemperatureConverter.IllegalArgumentException e) {
            exceptionThrown = true;
        }
        System.assert(exceptionThrown, 'Expected an IllegalArgumentException to be thrown for null input.');
    }
}
//wi-000009