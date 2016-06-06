package com.fi.dao;

import java.sql.Timestamp;

import javax.sql.DataSource;

import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import com.fi.api.ContactFormMsg;
import com.fi.common.UUIDGenerator;

public class JdbcWriteDao implements WriteDao {

	private NamedParameterJdbcTemplate jdbcTemplate;
	
	public JdbcWriteDao(){
		
	}
	
	public JdbcWriteDao( DataSource dataSource ){
		this.jdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public int registerForNewsLetter(String email, String ipAddress) {
		final String sql = "INSERT INTO EMAIL_INFO (EMAIL, REF_ID, INSERT_DT, IP_ADDRESS) VALUES (:email, :refId, :insertDt, :ipAddr)";
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("email", email);
		params.addValue("refId", UUIDGenerator.newRefId());
		params.addValue("insertDt", new Timestamp(System.currentTimeMillis()));
		params.addValue("ipAddr", ipAddress);
		return jdbcTemplate.update(sql, params);		
	}

	@Override
	public int registerContactForm(ContactFormMsg msg, String ipAddress) {
		final String sql = "INSERT INTO CONTACT_INFO (NAME, EMAIL, TXT_MSG, REF_ID, INSERT_DT, IP_ADDRESS) VALUES (:name, :email, :msg, :refId, :insertDt, :ipAddr)";
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("name", msg.getName());
		params.addValue("email", msg.getEmail());
		params.addValue("msg", msg.getTextMsg());
		params.addValue("refId", UUIDGenerator.newRefId());
		params.addValue("insertDt", new Timestamp(System.currentTimeMillis()));
		params.addValue("ipAddr", ipAddress);
		return jdbcTemplate.update(sql, params);
	}

	@Override
	public int registerEnquiryForm() {
		
		return 0;
	}
	
}
