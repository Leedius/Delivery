package dto;

public class Order {
	private String menuName;
	private int chikenNum;
	private String[] addOrder;
	private String requestText;
	
	
	public Order(){
		
	}
	
	public Order(String menuName, int chikenNum, String[] addOrder, String requestText) {
		super();
		this.menuName = menuName;
		this.chikenNum = chikenNum;
		this.addOrder = addOrder;
		this.requestText = requestText;
	}

	
	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getChikenNum() {
		return chikenNum;
	}

	public void setChikenNum(int chikenNum) {
		this.chikenNum = chikenNum;
	}

	public String[] getAddOrder() {
		return addOrder;
	}

	public void setAddOrder(String[] addOrder) {
		this.addOrder = addOrder;
	}

	public String getRequestText() {
		return requestText;
	}

	public void setRequestText(String requestText) {
		this.requestText = requestText;
	}
	
	
	
	
}
