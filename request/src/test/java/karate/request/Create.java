package karate.request;

import com.intuit.karate.junit5.Karate;

public class Create {

    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/create.feature").relativeTo(getClass());
    }
}