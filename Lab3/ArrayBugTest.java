import static org.junit.Assert.*;
import org.junit.*;

public class ArrayBugTest {

	@Test
	public void testReverseInPlace() {
		int[] input = { 1, 2, 3, 4 }; // Input array would be 1,2,3,4
		int[] expected = { 4, 3, 2, 1 }; // Expected array would be 4,3,2,1
		ArrayBug.reverseInPlace(input);
		assertArrayEquals(expected, input);
	}

	@Test
	public void testReverseInPlace2() {
		int[] input = { 4, 3, 3, 4 }; // input array would be 4,3,3,4
		int[] expected = { 4, 3, 3, 4 };
		ArrayBug.reverseInPlace(input);
		assertArrayEquals(expected, input);
	}

	@Test
	public void testReverseInPlace3(){
		int[] input = {0,0,0,0};
		int[] expected = {0,0,0,0};
		ArrayBug.reverseInPlace(input);
		assertArrayEquals(expected, input);
	}

	@Test
	public void testReverseInPlaceLong(){
		int[] input = {1,2,3,4,5,6,7,8,9,10};
		int[] expected = {10,9,8,7,6,5,4,3,2,1};
		ArrayBug.reverseInPlace(input);
		assertArrayEquals(expected, input);
	}
	
}
