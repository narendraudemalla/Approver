/**
 * @description  This class provides utility methods for temperature conversion between Fahrenheit and Celsius.
 *               It contains methods to convert temperatures from Fahrenheit to Celsius and vice versa.
 * 
 * @author       [Narendra Reddy]
 * @date         [18-9-2024]
 * @version      1.0
 * @group        Temperature Conversion Utilities
 * 
 * @lastModified [18-9-2024] - [Narendra Reddy U] - [Methods changes]
 * 
 * @example
 *               // Convert 32°F to Celsius
 *               Decimal celsius = TemperatureConverter.fahrenheitToCelsius(32);
 *               // Convert 0°C to Fahrenheit
 *               Decimal fahrenheit = TemperatureConverter.celsiusToFahrenheit(0);
 */

public class TemperatureConverter {
    /**
     * @description  Converts a temperature value from Fahrenheit to Celsius.
     * @param        fahrenheit The temperature in Fahrenheit.
     * @return       The temperature converted to Celsius.
     */
    public static Decimal fahrenheitToCelsius(Decimal fahrenheit) {
        return (fahrenheit - 32) * 5 / 9;
    }

    /**
     * @description  Converts a temperature value from Celsius to Fahrenheit.
     * @param        celsius The temperature in Celsius.
     * @return       The temperature converted to Fahrenheit.
     */
    public static Decimal celsiusToFahrenheit(Decimal celsius) {
        return (celsius * 9 / 5) + 32;
    }
}
