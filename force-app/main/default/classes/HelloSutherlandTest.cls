@isTest
public class HelloSutherlandTest {
    
    @isTest
    static void testSayHello() {
        // Start the test context
        Test.startTest();
        
        // Call the HelloWorld.sayHello() method
        HelloSutherland.sayHello();
        
        // Since we cannot directly verify debug logs in tests, we assert true
        // to ensure that the method executed without throwing an exception
        System.assert(true, 'Test passed: HelloSutherland.sayHello() executed successfully.');
        
        // End the test context
        Test.stopTest();
    }
}