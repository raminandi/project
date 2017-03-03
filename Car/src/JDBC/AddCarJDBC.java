package JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import DAO.AddCarDAO;
import Models.AddCarModel;

public class AddCarJDBC implements AddCarDAO {
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void insert(AddCarModel car) {
		String sql = "INSERT INTO addcar " 
					+"(Brand, Model, Year, Price, Kind, Time, Ostan, KindD, Shasi, Color, Status, Fuel, Hazine)"
					+"VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Connection conn = null;
		
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, car.getBrand());
			ps.setString(2, car.getModel());
			ps.setInt(3, car.getYear());
			ps.setInt(4, car.getPrice());
			ps.setString(5, car.getKind());
			ps.setInt(6, car.getTime());
			ps.setString(7, car.getOstan());
			ps.setString(8, car.getKindD());
			ps.setString(9, car.getShasi());
			ps.setString(10, car.getColor());
			ps.setString(11, car.getStatus());
			ps.setString(12, car.getFuel());
			ps.setString(13, car.getHazine());
			
			ps.executeUpdate();
			ps.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);

		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
	}
}
