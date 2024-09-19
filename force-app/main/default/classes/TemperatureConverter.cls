public class TemperatureConverter {
    public static Decimal fahrenheitToCelsius(Decimal fahrenheit) {
        return (fahrenheit - 32) * 5 / 9;
    }

    public static Decimal celsiusToFahrenheit(Decimal celsius) {
        return (celsius * 9 / 5) + 32;
    }
}
