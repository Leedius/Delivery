package dto;

public class Delivery {
	private String customer;
	private String tell;
	private String location;
	
	public Delivery() {
		
	}
	
	public Delivery(String customer, String tell, String location) {
		super();
		this.customer = customer;
		this.tell = tell;
		this.location = location;
	}

	public String getCustomer() {
		return customer;
	}

	public void setCustomer(String customer) {
		this.customer = customer;
	}

	public String getTell() {
		return tell;
	}

	public void setTell(String tell) {
		this.tell = tell;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	
	
}
