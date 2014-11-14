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
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class MyController {

	@Autowired
	private MyService helloWorldService;

        @RequestMapping("/form")
        public String form()
        {
            return "form.jsp";
        }
        
        @RequestMapping(value="/results", consumes="multipart/form-data;charset=UTF-8")
        public String results(
                @RequestParam(value = "text1") String text1,
                @RequestParam(value = "text2") String text2,
                @RequestParam(value = "number2") String num2,
                @RequestParam(value = "text3") String text3,
                @RequestParam(value = "number3") String num3,
                @RequestParam(value = "text4") String text4,
                @RequestParam(value = "number4") String num4,
                Map<String, Object> model) throws IOException
        {
            
            model.put("prezydent", 
                    GetRandomElementAsMap(this.helloWorldService.getRecordsByName(text1, "1")));
            model.put("radaM",
                    GetRandomElementAsMap(this.helloWorldService.getRecordsByName(text2, num2)));
            model.put("radaD",
                    GetRandomElementAsMap(this.helloWorldService.getRecordsByName(text3, num3) ));
            model.put("sejmik", 
                    GetRandomElementAsMap(this.helloWorldService.getRecordsByName(text4, num4) ));
            
            model.put("text3", text3);
            model.put("text4", text4);
            
            return "results.jsp";
        }
        
    private Map<String, String> GetRandomElementAsMap(ArrayList<CSVRecord> col) {
        if( col.size()== 0 ) return null;
        Random random = new Random();
        return col.get( random.nextInt(col.size())).toMap();
    }
}
