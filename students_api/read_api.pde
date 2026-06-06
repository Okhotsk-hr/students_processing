String load_school = "s001";
String load_grade = "1";
String load_class = "A";
String load_url;


String[] read_api(int snum) {
    
    load_url = base_url + "school=" + load_school + "&grade=" + load_grade + "&class=" + load_class;
    // API取得（配列として取得）
    arr = loadJSONArray(load_url);
    
    String[] name = new String[arr.size()];
    String[] kana_name = new String[arr.size()];
    String[] gender = new String[arr.size()];
    String[] birth_date = new String[arr.size()];
    
    for (int i = 0; i < arr.size(); i++) {
        JSONObject obj = arr.getJSONObject(i);
        name[i] = obj.getString("last_name") + " " + obj.getString("first_name");
        kana_name[i] = obj.getString("last_name_kana") + " " + obj.getString("first_name_kana");
        gender[i] = obj.getString("gender");
        birth_date[i] = obj.getString("birth_date");
        println(name[i] + ", " + gender[i] + ", " + birth_date[i]);
    }
    println("------");
    println(load_url);
    String[] testreturn = {name[snum], kana_name[snum], gender[snum], birth_date[snum]};
    
    return testreturn;
}