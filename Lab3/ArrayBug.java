public class ArrayBug {

	static void reverseInPlace(int[] arr){
		
			for(int i = 0; i < arr.length; i +=1){
				arr[i] = arr[arr.length - 1 - i];
			}
		
	}
}
