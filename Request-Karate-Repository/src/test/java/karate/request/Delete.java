package karate.request;

import com.intuit.karate.junit5.Karate;

public class Delete {

    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/delete.feature").relativeTo(getClass());
    }
}
