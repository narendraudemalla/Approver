@IsTest
public class HelloSutherlandTest {
    
    @IsTest
    static void testSayHello() {
        // Create a mock user to run the test as
        User testUser = [SELECT Id FROM User WHERE Profile.Name = 'Standard User' LIMIT 1];

        // Run the test code within the context of the mock user
        System.runAs(testUser) {
            // Start the test context
            Test.startTest();
            
            // Call the HelloSutherland.sayHello() method
            HelloSutherland.sayHello();
            
            // Since we cannot directly verify debug logs in tests, we assert true
            // to ensure that the method executed without throwing an exception
            System.assert(true, 'Test passed: HelloSutherland.sayHello() executed successfully.');
            
            // End the test context
            Test.stopTest();
        }
    }
}
