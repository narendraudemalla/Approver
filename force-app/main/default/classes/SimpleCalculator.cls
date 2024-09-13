public class SimpleCalculator {
    // Method to add two numbers
    public static Integer addNumbers(Integer num1, Integer num2) {
        return num1 + num2;
    }

    // Method to subtract two numbers
    public static Integer subtractNumbers(Integer num1, Integer num2) {
        return num1 - num2;
    }

    // Method to multiply two numbers
    public static Integer multiplyNumbers(Integer num1, Integer num2) {
        return num1 * num2;
    }

    // Method to divide two numbers
    public static Decimal divideNumbers(Integer num1, Integer num2) {
        if (num2 == 0) {
            throw new IllegalArgumentException('Cannot divide by zero');
        }
        return (Decimal) num1 / num2;
    }
}
//comment
//wi-000005