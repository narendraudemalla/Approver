/**
 * @description       :
 * @author            : Prateek Deshmukh
 * @group             : Prateek Deshmukh,Aditya S,Mahalakshmi
 * @last modified on  : 06-04-2024
 * @last modified by  : Prateek Deshmukh
**/
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
