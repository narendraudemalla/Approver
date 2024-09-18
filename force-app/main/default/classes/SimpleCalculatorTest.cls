@isTest
public class SimpleCalculatorTest {
    
    // Test for the add method
    @isTest
    static void testAdd() {
        SimpleCalculator calc = new SimpleCalculator();
        
        // Positive test: Add two positive numbers
        Integer result = calc.add('10', '20');
        System.assertEquals(30, result, '10 + 20 should be 30');
        
        // Negative test: Add a positive and a negative number
        result = calc.add('10', '-5');
        System.assertEquals(5, result, '10 + (-5) should be 5');
        
        // Edge case: Add two zeros
        result = calc.add('0', '0');
        System.assertEquals(0, result, '0 + 0 should be 0');
        
        // Negative test: Invalid input
        result = calc.add('ten', '20');
        System.assertEquals(null, result, 'Invalid input should return null');
    }

    // Test for the subtract method
    @isTest
    static void testSubtract() {
        SimpleCalculator calc = new SimpleCalculator();
        
        // Positive test: Subtract two numbers
        Integer result = calc.subtract('20', '10');
        System.assertEquals(10, result, '20 - 10 should be 10');
        
        // Negative test: Subtract a larger number from a smaller number
        result = calc.subtract('10', '20');
        System.assertEquals(-10, result, '10 - 20 should be -10');
        
        // Edge case: Subtract zero
        result = calc.subtract('10', '0');
        System.assertEquals(10, result, '10 - 0 should be 10');
        
        // Negative test: Invalid input
        result = calc.subtract('twenty', '10');
        System.assertEquals(null, result, 'Invalid input should return null');
    }

    // Test for the getAccountsByName method
    @isTest
    static void testGetAccountsByName() {
        // Set up test data
        Account acc1 = new Account(Name = 'Test Account 1');
        Account acc2 = new Account(Name = 'Test Account 2');
        insert new List<Account> { acc1, acc2 };
        
        SimpleCalculator calc = new SimpleCalculator();
        
        // Positive test: Search for an existing account
        List<Account> accounts = calc.getAccountsByName('Test Account 1');
        System.assertEquals(1, accounts.size(), 'There should be 1 account with the name Test Account 1');
        
        // Negative test: Search for a non-existing account
        accounts = calc.getAccountsByName('Non-Existing Account');
        System.assertEquals(0, accounts.size(), 'There should be no accounts with the name Non-Existing Account');
        
        // Edge case: Empty string
        accounts = calc.getAccountsByName('');
        System.assertEquals(0, accounts.size(), 'Empty string should return no accounts');
    }
}

// Added vulnerability

//vuln


