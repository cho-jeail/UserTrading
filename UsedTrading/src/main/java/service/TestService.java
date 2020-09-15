package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.TestDAO;

@Service
public class TestService {
	
	@Autowired private TestDAO td;

	public String find(String success) {
		return td.find(success);
	}
}
