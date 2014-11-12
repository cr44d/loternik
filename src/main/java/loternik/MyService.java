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

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.apache.commons.csv.*;

@Component
public class MyService {

    @Value("${name:World}")
    private String name;

    public String getHelloMessage(String teryt, String okreg) {
        FileReader file = null;
        try {
            String output = "";

            file = new FileReader("kandydaci.csv");
            CSVParser parser = new CSVParser(file, CSVFormat.EXCEL.withHeader().withDelimiter(';'));
            for (CSVRecord csvRecord : parser) {
                if (teryt.equals(csvRecord.get("teryt"))
                        && okreg.equals(csvRecord.get("Okreg"))) {
                    output += "<p>" + csvRecord.toString() + "</p>";
                }
            }
            return output;
        } catch (FileNotFoundException ex) {
            Logger.getLogger(MyService.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(MyService.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                file.close();
            } catch (IOException ex) {
                Logger.getLogger(MyService.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public ArrayList<CSVRecord> getRecords(String teryt, String okreg) throws FileNotFoundException, IOException {
        FileReader file = new FileReader("kandydaci.csv");
        CSVParser parser = new CSVParser(file, CSVFormat.EXCEL.withHeader().withDelimiter(';'));
        ArrayList<CSVRecord> output = new ArrayList<CSVRecord>();
        for (CSVRecord csvRecord : parser) {
            if (teryt.equals(csvRecord.get("teryt"))
                    && okreg.equals(csvRecord.get("Okreg"))) {
                output.add(csvRecord);
            }
        }
        return output;
    }

    public ArrayList<CSVRecord> getRecordsByName(String name, String okreg) throws FileNotFoundException, IOException {
        FileReader file = new FileReader("kandydaci.csv");
        CSVParser parser = new CSVParser(file, CSVFormat.EXCEL.withHeader().withDelimiter(';'));
        ArrayList<CSVRecord> output = new ArrayList<CSVRecord>();
        for (CSVRecord csvRecord : parser) {
            if (name.equals(csvRecord.get("Kandydat_do"))
                    && okreg.equals(csvRecord.get("Okreg"))) {
                output.add(csvRecord);
            }
        }
        return output;
    }
}
