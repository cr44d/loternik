/*
 * Copyright 2012-2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package loternik;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.Random;
import org.apache.commons.csv.CSVRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MyController {

	@Autowired
	private MyService helloWorldService;

        @RequestMapping("/form")
        public String form()
        {
            return "form.jsp";
        }
        
        @RequestMapping("/results")
        public String results(Map<String, Object> model) throws IOException
        {
            
            model.put("prezydent", 
                    GetRandomElementAsMap(this.helloWorldService.getRecordsByName("Prezydent m.st. Warszawy", "1")));
            model.put("radaM",
                    GetRandomElementAsMap(this.helloWorldService.getRecordsByName("Rada m.st. Warszawy", "5")));
            model.put("radaD",
                    GetRandomElementAsMap(this.helloWorldService.getRecordsByName("Rada Dzielnicy Żoliborz m. st. Warszawy", "4") ));
            model.put("sejmik", 
                    GetRandomElementAsMap(this.helloWorldService.getRecordsByName("Sejmik Województwa Mazowieckiego", "2") ));
            
            return "results.jsp";
        }
        
    private CSVRecord GetRandomElement(ArrayList<CSVRecord> col) {
        Random random = new Random();
        return col.get( random.nextInt(col.size()));
    }

    private Map<String, String> GetRandomElementAsMap(ArrayList<CSVRecord> col) {
        Random random = new Random();
        return col.get( random.nextInt(col.size())).toMap();
    }
}
