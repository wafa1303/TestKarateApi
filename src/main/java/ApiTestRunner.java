import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

import static org.junit.Assert.assertTrue;


public class ApiTestRunner {
    @Test
    // Parallel = nombre de tests qui s'executent en parallel
    public void testParallel(){
        Results results = Runner.path("classpath:features").parallel(3);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }
}
