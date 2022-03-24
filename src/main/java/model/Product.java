package model;

public class Product {
   private int id;
    private String name;
    private String brand;
    private String made_in;
    private float weight;
    private int price;
    private int quantity;
    private String description;
    private int category;

    public Product(int id, String name, String brand, String made_in, float weight, int price, int quantity, String description, int category) {
        this.id = id;
        this.name = name;
        this.brand = brand;
        this.made_in = made_in;
        this.weight = weight;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.category = category;
    }

    public Product(String name, String brand, String made_in, float weight, int price, int quantity, String description, int category) {
        this.name = name;
        this.brand = brand;
        this.made_in = made_in;
        this.weight = weight;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.category = category;
    }

    public Product(String name, String brand, String made_in, float weight, int price, int quantity, String description) {
        this.name = name;
        this.brand = brand;
        this.made_in = made_in;
        this.weight = weight;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
    }

    public Product(int id, String name, String brand, String made_in, float weight, int price, int quantity ) {
        this.id = id;
        this.name = name;
        this.brand = brand;
        this.made_in = made_in;
        this.weight = weight;
        this.price = price;
        this.quantity = quantity;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getMade_in() {
        return made_in;
    }

    public void setMade_in(String made_in) {
        this.made_in = made_in;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Product { " +
                "id = " + id +
                ", name = '" + name + '\'' +
                ", brand = '" + brand + '\'' +
                ", made_in = '" + made_in + '\'' +
                ", weight = " + weight +
                ", price = " + price +
                ", quantity = " + quantity +

                '}';
    }
}
