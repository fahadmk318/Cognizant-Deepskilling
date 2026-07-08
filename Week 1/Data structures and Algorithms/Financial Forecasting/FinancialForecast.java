public class FinancialForecast {

    /**
     * Recursively calculates the future value of an investment.
     *
     * @param presentValue current/starting amount
     * @param growthRate   growth rate per period (e.g., 0.08 for 8%)
     * @param years        number of years to project forward
     * @return the forecasted future value
     */
    public static double calculateFutureValue(double presentValue, double growthRate, int years) {

        if (years == 0) {
            return presentValue;
        }

        double grownValue = presentValue * (1 + growthRate);
        return calculateFutureValue(grownValue, growthRate, years - 1);
    }
}