package dao;

import context.DBConnection;
import model.Category;
import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao implements IProductDao {
    @Override
    public List<Product> getallProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM ql_sanphamwhey.sanphamwhey";
        try (Connection connection =  DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9)
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Product> getallProductbyId(int id) {
        String query = "select * from ql_sanphamwhey.sanphamwhey\n" +
                "where id=?;";
        List<Product> list = new ArrayList<>();
        try (Connection connection =  DBConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getInt(9)
                ));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Product getProductById(int id) {
        String query = "SELECT * FROM sanphamwhey\n" +
                "where id=?;";
        try (Connection connection =  DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new Product(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getFloat(5),
                        resultSet.getInt(6),
                        resultSet.getInt(7),
                        resultSet.getString(8),
                        resultSet.getInt(9)
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Category> getallCategory() {
        String query = "SELECT * FROM ql_sanphamwhey.category;";
        List<Category> categoryList = new ArrayList<>();
        try (Connection connection =  DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                categoryList.add(new Category(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return categoryList;
    }

    public void addProduct(String name, String brand, String made_in, float weight, int price, int quantity, String description, int category) {
        String query = "INSERT INTO sanphamwhey ( `name`, `brand`, `made_in`, `weight`, `price`, `quantity`, `description`, `category`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
        try (Connection connection =  DBConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {

            ps.setString(1, name);
            ps.setString(2, brand);
            ps.setString(3, made_in);
            ps.setFloat(4, weight);
            ps.setInt(5, price);
            ps.setInt(6, quantity);
            ps.setString(7, description);
            ps.setInt(8, category);

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Product> search(String name) {
       List<Product> search = new ArrayList<>();
       for (Product product: getallProduct()) {
           if(product.getName().toLowerCase().contains(name.toLowerCase())){
               search.add(product);
           }
       }
       return search;
    }
    public void delete(int id){
        String query = "delete from sanphamwhey WHERE id = ? ;";
        try(Connection connection = DBConnection.getConnection();
        PreparedStatement ps = connection.prepareStatement(query)){
            ps.setInt(1, id);
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }

    }
    public void editProduct( int id, String name, String brand, String made_in, float weight, int price, int quantity, String description, int category) {
        // id, ProductEdited
        // Tim Product voi id trong database



        String query = "UPDATE sanphamwhey SET `name` = ?, `brand` = ?, `made_in` = ?, `weight` = ?, `price` = ?, `quantity` = ?, `description` = ?, `category` = ? WHERE `id` = ?;";
        try (Connection connection =  DBConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, name);
            ps.setString(2, brand);
            ps.setString(3, made_in);
            ps.setFloat(4, weight);
            ps.setInt(5, price);
            ps.setInt(6, quantity);
            ps.setString(7, description);
            ps.setInt(8,category);
            ps.setInt(9,id);




            System.out.println(ps);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public Product setProductById(int id) {
        String query = "UPDATE `ql_sanphamwhey`.`sanphamwhey` SET `name` = '?', `brand` = '?', `made_in` = '?', `weight` = '?', `price` = '?', `quantity` = '?', `description` = '?' WHERE (`id` = '?');";
        try (Connection connection =  DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new Product(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getFloat(5),
                        resultSet.getInt(6),
                        resultSet.getInt(7),
                        resultSet.getString(8),
                        resultSet.getInt(9)
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


}

