package sec01.ex02;

public class Address {
	private String city;
	private String zipcode;

	public Address() {
	
	}
	//속성에 대한 getter/setter
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
}
