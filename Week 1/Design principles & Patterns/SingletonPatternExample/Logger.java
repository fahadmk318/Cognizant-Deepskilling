public class Logger {

    private static Logger instance;

    private int logCount;

    private Logger() {
        logCount = 0;
        System.out.println("Logger instance created.");
    }

    public static synchronized Logger getInstance() {
        if (instance == null) {
            instance = new Logger();
        }
        return instance;
    }

    public void log(String message) {
        logCount++;
        System.out.println("[LOG #" + logCount + "] " + message);
    }

    public int getLogCount() {
        return logCount;
    }
}