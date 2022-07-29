package sec02.ex01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

public class MemberDAO {
	
	private Connection con;	//데이터베이스와 연결하는 객체
	private PreparedStatement pstmt; //Conncection으로 연결한 객체에게, Query작업을 실행하기 위한 객체
	private DataSource dataFactory;

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	public boolean overlappedID(String id)
	{
		boolean result = false;
		try
		{
			con = dataFactory.getConnection();
			String query = "select decode(count(*),1,'true','false') as result from t_member";
			query += " where id=?";
			System.out.println("prepareStatement: " + query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			result = Boolean.parseBoolean(rs.getString("result"));
			pstmt.close();
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}

}
