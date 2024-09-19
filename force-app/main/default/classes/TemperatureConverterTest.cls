-/**
 * @description  This class contains unit tests for the TemperatureConverter class.
 *               It validates the conversion methods: fahrenheitToCelsius and celsiusToFahrenheit.
 * 
 * @author       [N-arendra Reddy]
 * @date         [18-9-2024]
 * @version      1.0
 * @group        Temperature Conversion Tests
 * 
 * @lastModified [18-9-2024] - [Narendra Reddy   ] - [Added CelsiustoFahrenheit]
 * 
 * @see          TemperatureConverter.cls
 */

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
//aa
