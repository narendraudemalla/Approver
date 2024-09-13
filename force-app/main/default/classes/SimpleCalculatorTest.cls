@IsTest
public class SimpleCalculatorTest {
    @IsTest
    static void testAddNumbers() {
        Integer result = SimpleCalculator.addNumbers(10, 5);
        System.assertEquals(15, result, 'Addition result is incorrect');
    }

    @IsTest
    static void testSubtractNumbers() {
        Integer result = SimpleCalculator.subtractNumbers(10, 5);
        System.assertEquals(5, result, 'Subtraction result is incorrect');
    }

    @IsTest
    static void testMultiplyNumbers() {
        Integer result = SimpleCalculator.multiplyNumbers(10, 5);
        System.assertEquals(50, result, 'Multiplication result is incorrect');
    }

    @IsTest
    static void testDivideNumbers() {
        Decimal result = SimpleCalculator.divideNumbers(10, 5);
        System.assertEquals(2, result, 'Division result is incorrect');
    }

    @IsTest
    static void testDivideByZero() {
        try {
            SimpleCalculator.divideNumbers(10, 0);
            System.assert(false, 'Exception should have been thrown for division by zero');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Cannot divide by zero', e.getMessage());
        }
    }
}
