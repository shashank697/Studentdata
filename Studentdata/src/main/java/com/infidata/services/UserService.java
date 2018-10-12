package com.infidata.services;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.infidata.modal.User;
import com.infidata.repository.UserRepository;

@Service
@Transactional
public class UserService<internship> {
	
	private final UserRepository userRepository;
	
	public UserService(UserRepository userRepository) {
		this.userRepository=userRepository;
	}
	
	public void saveMyUser(User user ) {
		userRepository.save(user);
	}
	
	public List<User> showAllUsers(){
		List<User> users = new ArrayList<User>();
		for(User user : userRepository.findAll()) {
			users.add(user);
		}
		
		return users;
	}
	
	public void deleteMyUser(int id) {
      userRepository.deleteById(id);
	}

//	public User findAllByInternship(String internship) {
//		List<User> users = new ArrayList<User>();
//		for(User user : userRepository.findAll()) {
//			users.add(user);
//		}
//		
//		return users;
//	}

//	public List<User> getUsersByInternship() {
//		List<User> users = new ArrayList<User>();
//		for(User user : userRepository.findAll()) {
//			users.add(user);
//		}		return users;
	}

	

	

	
//	public User editUser(int id) {
//	return userRepository.findOne(id);
//}
	
				
//	public List<internship> findUserinternship(Integer id,String txt) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	
//	@Override
//	public List<internship> findUserinternship(Integer id,String txt) {
//  String sql = "SELECT id,name,mobile,email,college,branch,semester,address,remark FROM user WHEREid=? AND (internship LIKE '%"+txt+"%')");
//   return getJdbcTemplate().query(sql,new InternshipRowMapper(),id);
//	}
//
//	private Object getJdbcTemplate() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	public List<internship> findUserinternship(Integer id) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	//@Override
//	@Transactional
//	public List<User> searchUser(String theSearchInternship) {
//        return userRepository.searchUser(theSearchInternship);
//
//	}
	


