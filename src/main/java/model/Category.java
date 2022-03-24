package model;

public class Category {
    int id;
    String categoryname;
    String categoryfrom;

    public Category(){

    }

    public Category(String categoryname, String categoryfrom) {
        this.categoryname = categoryname;
        this.categoryfrom = categoryfrom;
    }

    public Category(int id, String categoryname, String categoryfrom) {
        this.id = id;
        this.categoryname = categoryname;
        this.categoryfrom=categoryfrom;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return categoryname;
    }

    public void setName(String categoryname) {
        this.categoryname = categoryname;
    }

    public String getCategoryfrom() {
        return categoryfrom;
    }

    public void setCategoryfrom(String categoryfrom) {
        this.categoryfrom = categoryfrom;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id = " + id +
                ", categoryname = '" + categoryname + '\'' +
                ", categoryfrom = '" + categoryfrom + '\'' +
                '}';
    }

}
