package com.example.stockspring.dao;

import com.example.stockspring.model.Company;

import java.sql.SQLException;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


public interface CompanyDao extends JpaRepository<Company, Integer> {
	 /* public boolean insertCompany(Company company) throws SQLException;
	    public Company updateCompany(Company company);
		public List<Company> getCompanyList() throws SQLException;
		public List<Sector> getSectorList() throws SQLException;*/
}
