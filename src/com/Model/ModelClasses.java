package com.Model;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.DAO.EmpRegDao;
import com.DAO.VacancyDetails;

//create connection------>
public class ModelClasses {

	public Connection createConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/softvin", "root", "root");

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

		return conn;

	}

	// check for admin login---->
	public int logincheckvalues(String unme, String pass) {
		int i = 0;
		try {
			Connection conn = createConnection();
			PreparedStatement ps = conn.prepareStatement("select * from login where uname = ? and PASSWORD = ?");
			ps.setString(1, unme);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				i = 1;
			}
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return i;
	}

	// for suscribers---->
	public int suscribegetvalues(VacancyDetails vd) {
		int i = 0;
		try {
			Connection conn = createConnection();
			PreparedStatement ps = conn.prepareStatement("insert into suscribe values(?,?,?,?)");
			ps.setString(1, vd.getName());
			ps.setString(2, vd.getEmail());
			ps.setString(3, vd.getNumber());
			ps.setString(4, vd.getMessage());

			i = ps.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;

	}

	// Employee registration----->
	public int employeeregistration(EmpRegDao em) {
		int i = 0;
		try {
			Connection conn = createConnection();
			PreparedStatement ps = conn.prepareStatement("insert into Empreg values(?,?,?,?,?,?,?,?)");
			ps.setString(1, em.getEname());
			ps.setString(2, em.getEdesig());
			ps.setFloat(3, em.getEsalary());
			ps.setString(4, em.getEmno());
			ps.setString(5, em.getEex());
			ps.setString(6, em.getEqul());
			ps.setString(7, em.getEadd());
			ps.setString(8, em.getEgender());
			i = ps.executeUpdate();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	// Employee Details---->
	public ArrayList<EmpRegDao> getempvalues(int start, int end) {
		ArrayList<EmpRegDao> list = new ArrayList<EmpRegDao>();
		EmpRegDao erd = null;
		try {
			Connection conn = createConnection();
			PreparedStatement ps = conn.prepareStatement("select * from empreg order by name limit " + (start - 1) + "," + end);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				erd = new EmpRegDao(rs.getString("name"), rs.getString("designation"), rs.getFloat("salary"),
						rs.getString("number"), rs.getString("experience"), rs.getString("qualification"),
						rs.getString("address"), rs.getString("gender"));
				list.add(erd);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// Delete value--->

	public int deletevalues(String gender) {
		int i = 0;
		Connection conn = null;
		try {
			conn = createConnection();
			PreparedStatement ps = conn.prepareStatement("delete from empreg where gender=?");
			ps.setString(1, gender);
			i = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	// search employee
	public ArrayList<EmpRegDao> searchemp(String id) {
		ArrayList<EmpRegDao> list = new ArrayList<EmpRegDao>();
		EmpRegDao erd = null;
		try {
			Connection conn = createConnection();
			PreparedStatement ps = conn.prepareStatement("select * from empreg where gender=? order by name");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				erd = new EmpRegDao(rs.getString("name"), rs.getString("designation"), rs.getFloat("salary"),
						rs.getString("number"), rs.getString("experience"), rs.getString("qualification"),
						rs.getString("address"), rs.getString("gender"));
				list.add(erd);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// update value-->

	public int updateValues(EmpRegDao em) {
		int i = 0;
		try {
			Connection conn = createConnection();
			PreparedStatement ps = conn.prepareStatement(
					"update empreg set  name=?, designation=?,salary=?, number=?,experience=?,qualification=?,address=? where gender=? ");
			ps.setString(1, em.getEname());
			ps.setString(2, em.getEdesig());
			ps.setFloat(3, em.getEsalary());
			ps.setString(4, em.getEmno());
			ps.setString(5, em.getEex());
			ps.setString(6, em.getEqul());
			ps.setString(7, em.getEadd());
			ps.setString(8, em.getEgender());
			i = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return i;
	}

	public ArrayList<VacancyDetails> getVacancyDetails(int start, int end) {
		ArrayList<VacancyDetails> list = new ArrayList<>();
		VacancyDetails vd = null;
		Connection conn = createConnection();
		try {

			PreparedStatement ps = conn.prepareStatement("select * from suscribe limit " + (start - 1) + "," + end);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				vd = new VacancyDetails(rs.getString("name"), rs.getString("email"), rs.getString("number"),
						rs.getString("message"));
				list.add(vd);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

}
