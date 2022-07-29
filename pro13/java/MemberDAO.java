package sec01.ex01;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class MemberDAO
{
	private Connection con;	//데이터베이스와 연결하는 객체
	private PreparedStatement pstmt; //Conncection으로 연결한 객체에게, Query작업을 실행하기 위한 객체
	private DataSource dataFactory;
	
	public MemberDAO()
	{
	
	}
	
	public List listMembers()
	{
		List list = new ArrayList();
		try
		{
			con = dataFactory.getConnection(); //DataSource를 이용해 데이터베이스와 연결
			String query = "select * from t_member order by joinDate desc";
			System.out.println("prepareStatement: " + query);
			pstmt = con.prepareStatement(query); //select 쿼리문을 넣어서 환경설정한 것을 pstmt에 넣어줌
			ResultSet rs = pstmt.executeQuery(); //executeQuery(String sql) 조회문(select,show등)을 실행할 목적으로 사용, 첫줄 주소가 rs에 들어감
			while (rs.next()) // rs에 다음오는값이 없을 경우 false를 반환해서 실행문이 끝남
			{
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				//조회한 레코드의 각 컬럼 값을 받아옴
				MemberBean vo = new MemberBean();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate); //각 컬럼 값을 다시 MemberVO객체의 속성에 설정
				list.add(vo); //설정된 Membervo객체를 다시 ArrayList 0인덱스부터 순차적으로 저장
			}
			rs.close();		
			pstmt.close(); //환경설정 끊기
			con.close();	//연결 끊기
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return list; //조회한 레코드의 개수만큼 MemberVO 객체를 저장한 ArrayList를 반환
	}
	
	public void addMember(MemberBean memberBean)
	{
		try
		{
			Connection con = dataFactory.getConnection(); //DataSource를 이용해 데이터베이스와 연결!!!하고 con에 넣음
			String id = memberBean.getId(); //memberForm에서 입력받은것이자 MemberBean의 객체 m의 id
			String pwd = memberBean.getPwd(); //memberForm에서 입력받은것이자 MemberBean의 객체 m의 pwd
			String name = memberBean.getName(); //memberForm에서 입력받은것이자 MemberBean의 객체 m의 name
			String email = memberBean.getEmail(); //memberForm에서 입력받은것이자 MemberBean의 객체 m의 email
			String query = "insert into t_member";	//sql(insert)문을 문자열로 생성
			query += "(id,pwd,name,email)";
			query += "values(?,?,?,?)";				//여기까지 쿼리문
			System.out.println("prepareStatement: " + query);
			pstmt = con.prepareStatement(query); //prepareStatement()메서드에 sql문을 전달해 prepareStatement객체 생성한다.
			pstmt.setString(1, id); //1번 물음표는 id
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, email);	//insert문의 각'?'에 순서대로 회원정보를 세팅
			pstmt.executeUpdate(); //executeUpdate(String sql) -회원정보를 테이블에 추가
			pstmt.close();
		} catch (Exception e)
		{
			
		}
	}
}
