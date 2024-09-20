/**
 * The HelloWorld class contains a simple method to demonstrate logging in Apex.
 */
public class HelloWorld {
    
    /**
     * Method to print "Hello, World!" to the debug log.
     * Logs a message using LoggingLevel.INFO.
     */
    public static void sayHello() {
        // Use LoggingLevel to categorize the debug statement
        System.debug(LoggingLevel.INFO, 'Hello, World!');
    }
}
