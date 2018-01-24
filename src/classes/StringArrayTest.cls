public class StringArrayTest {

    public static String[] generateStringArray (Integer nu) {
        String[] colors = new List<String>(nu);
        
        for(Integer i=0;i<nu;i++) {
    		colors[i] = 'Test ' + i; 
		}

        return colors;
    }
}