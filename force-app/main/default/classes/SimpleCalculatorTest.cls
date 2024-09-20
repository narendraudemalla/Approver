@isTest
public class SimpleCalculatorTest {
    
    @isTest
    static void testAdd() {
        SimpleCalculator calculator = new SimpleCalculator();
        
        // Valid inputs
        System.assertEquals(5, calculator.add('2', '3'));
        
        // Invalid inputs
        System.assertEquals(null, calculator.add('a', '3'));
        System.assertEquals(null, calculator.add('2', 'b'));
        System.assertEquals(null, calculator.add(null, '3'));
        System.assertEquals(null, calculator.add('2', null));
        System.assertEquals(null, calculator.add(null, null));
        
        // Edge cases
        System.assertEquals(0, calculator.add('0', '0'));
    }
}