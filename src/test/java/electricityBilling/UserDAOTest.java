import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Test;

import com.electricityBilling.dao.electricityBillingDAO;
import com.electricityBilling.model.electricityBilling;

class UserDAOTest {
	
	electricityBillingDAO userDAO = new electricityBillingDAO();
	
	
	@Test
	void selectUser_testcase1() {
		electricityBilling user  = userDAO.selectUser(1);
		assertNotNull(user);	
	}
	
	@Test
	void selectAllUser_testcase1() {
		assertTrue(userDAO.selectAllUsers().size()>0);
	}
	
	@Test
	void sdeletelUser_testcase1() {
		assertFalse(userDAO.deleteUser(56));
	}
}
