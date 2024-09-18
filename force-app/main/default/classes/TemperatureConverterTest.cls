@isTest
private class TemperatureConverterTest {
    @isTest
    static void testFahrenheitToCelsius() {
        Decimal result = TemperatureConverter.fahrenheitToCelsius(32); // Correct method call
        System.assertEquals(0, result, '32°F should convert to 0°C');
    }

    @isTest
    static void testCelsiusToFahrenheit() {
        Decimal result = TemperatureConverter.celsiusToFahrenheit(0); // Correct method call
        System.assertEquals(32, result, '0°C should convert to 32°F');
    }
}