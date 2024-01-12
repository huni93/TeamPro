/*
 * package dao;
 * 
 * import java.io.UnsupportedEncodingException; import java.sql.Connection;
 * import java.sql.DriverManager; import java.sql.PreparedStatement; import
 * java.sql.ResultSet; import java.sql.SQLException; import java.util.ArrayList;
 * import java.util.List;
 * 
 * 
 * import model.Auction; import model.Cart;
 * 
 * public class CartDao { public Connection getConnection() { Connection conn =
 * null; PreparedStatement pstmt = null;
 * 
 * try { Class.forName("oracle.jdbc.OracleDriver"); conn =
 * DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "kic",
 * "1111"); return conn; } catch (ClassNotFoundException e) {
 * 
 * e.printStackTrace(); } catch (SQLException e) {
 * 
 * e.printStackTrace(); }
 * 
 * return null; }
 * 
 * public int addToAproducts(int pnum, String id) throws SQLException {
 * Connection conn = getConnection(); String sql =
 * "INSERT INTO Aproducts (userid, itemid) SELECT ?, ? FROM DUAL WHERE EXISTS (SELECT 1 FROM amem WHERE id = ?) AND EXISTS (SELECT 1 FROM auction WHERE pnum = ?)"
 * ; PreparedStatement pstmt = conn.prepareStatement(sql); pstmt.setString(1,
 * id); pstmt.setInt(2, pnum); pstmt.setString(3, id); pstmt.setInt(4, pnum);
 * 
 * int num = pstmt.executeUpdate();
 * 
 * return num; }
 * 
 * public List<Cart> jumunList(String id) throws SQLException {
 * 
 * Connection conn = getConnection(); String sql =
 * "SELECT a.pnum, a.pname, a.price, a.picture, a.boardid, a.readcnt, " +
 * "a.file1, a.regdate, c.itemid " + "FROM cart c " +
 * "JOIN auction a ON c.itemid = a.pnum " + "WHERE c.userid = ? " +
 * "ORDER BY c.itemid";
 * 
 * PreparedStatement pstmt = conn.prepareStatement(sql); pstmt.setString(1, id);
 * 
 * ResultSet rs = pstmt.executeQuery(); List<Cart> li = new ArrayList();
 * 
 * while (rs.next()) {
 * 
 * Cart j = new Cart(); j.setPnum(rs.getInt("pnum"));
 * j.setPname(rs.getString("pname")); j.setPrice(rs.getString("price"));
 * j.setPicture(rs.getString("picture")); j.setBoardid(rs.getString("boardid"));
 * j.setReadcnt(rs.getInt("readcnt")); j.setFile1(rs.getString("file1"));
 * j.setRegdate(rs.getDate("regdate")); j.setItemid(rs.getString("itemid"));
 * li.add(j);
 * 
 * } return li;
 * 
 * }
 * 
 * 
 * 
 * 
 * 
 * }
 * 
 */