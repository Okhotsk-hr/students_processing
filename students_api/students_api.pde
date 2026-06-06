JSONArray arr;

String[] data = new String[4];
void setup() {
    size(700, 700);
    
    data = read_api(1);
    println(data);
    
}
