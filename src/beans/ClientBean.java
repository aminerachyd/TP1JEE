package beans;

import java.io.Serializable;

public class ClientBean implements Serializable {
	private String name;
	private String email;
	private String phone;
	private String message;

	public ClientBean() {

	}

	public ClientBean(String name, String email, String phone, String message) {
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.message = message;
	}

	public String getName() {
		return this.name;
	}

	public String getEmail() {
		return this.email;
	}

	public String getPhone() {
		return this.phone;
	}

	public String getMessage() {
		return this.message;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}