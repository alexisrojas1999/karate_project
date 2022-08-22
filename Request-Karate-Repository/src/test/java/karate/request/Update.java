package karate.request;

import com.intuit.karate.junit5.Karate;

public class Update {

    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/update.feature").relativeTo(getClass());
    }
}