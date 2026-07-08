public class ForecastTest {

    public static void main(String[] args) {

        double presentValue = 10000; // e.g., ₹10,000 initial investment
        double growthRate = 0.08; // 8% annual growth
        int years = 5;

        double futureValue = FinancialForecast.calculateFutureValue(presentValue, growthRate, years);

        System.out.println("Present Value: " + presentValue);
        System.out.println("Growth Rate: " + (growthRate * 100) + "%");
        System.out.println("Years: " + years);
        System.out.printf("Forecasted Future Value: %.2f%n", futureValue);
    }
}