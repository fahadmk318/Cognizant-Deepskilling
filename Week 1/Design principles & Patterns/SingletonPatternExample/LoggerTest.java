public class LoggerTest {

    public static void main(String[] args) {

        Logger logger1 = Logger.getInstance();
        logger1.log("Application started");

        Logger logger2 = Logger.getInstance();
        logger2.log("Fetching data from database");

        Logger logger3 = Logger.getInstance();
        logger3.log("Process completed");

        System.out.println("\n--- Verification ---");
        System.out.println("logger1 hashcode: " + logger1.hashCode());
        System.out.println("logger2 hashcode: " + logger2.hashCode());
        System.out.println("logger3 hashcode: " + logger3.hashCode());

        if (logger1 == logger2 && logger2 == logger3) {
            System.out.println("SUCCESS: Only one instance of Logger exists.");
        } else {
            System.out.println("FAILURE: Multiple instances were created.");
        }

        System.out.println("Total logs recorded: " + logger1.getLogCount());
    }
}