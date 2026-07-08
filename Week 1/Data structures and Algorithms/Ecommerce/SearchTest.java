import java.util.Arrays;
import java.util.Comparator;

public class SearchTest {

    public static void main(String[] args) {

        // Unsorted array
        Product[] unsortedProducts = {
                new Product(105, "Wireless Mouse", "Electronics"),
                new Product(102, "Yoga Mat", "Fitness"),
                new Product(108, "Coffee Maker", "Home Appliances"),
                new Product(101, "Bluetooth Speaker", "Electronics"),
                new Product(110, "Running Shoes", "Footwear")
        };

        // Sorted array
        Product[] sortedProducts = Arrays.copyOf(unsortedProducts, unsortedProducts.length);
        Arrays.sort(sortedProducts, Comparator.comparingInt(Product::getProductId));

        int targetId = 108;

        System.out.println("--- Linear Search ---");
        long startLinear = System.nanoTime();
        Product resultLinear = SearchAlgorithms.linearSearch(unsortedProducts, targetId);
        long endLinear = System.nanoTime();
        System.out.println(resultLinear != null ? "Found: " + resultLinear : "Not found");
        System.out.println("Time taken: " + (endLinear - startLinear) + " ns");

        System.out.println("\n--- Binary Search ---");
        long startBinary = System.nanoTime();
        Product resultBinary = SearchAlgorithms.binarySearch(sortedProducts, targetId);
        long endBinary = System.nanoTime();
        System.out.println(resultBinary != null ? "Found: " + resultBinary : "Not found");
        System.out.println("Time taken: " + (endBinary - startBinary) + " ns");
    }
}