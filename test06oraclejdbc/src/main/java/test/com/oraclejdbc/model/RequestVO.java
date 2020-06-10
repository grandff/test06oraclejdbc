package test.com.oraclejdbc.model;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import test.com.oraclejdbc.HomeController;

public class RequestVO {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	public RequestVO() {
		//logger.info("requestVO on");
	}
	
	private int num;
	private String name = "";
	private String tel = "";

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	@Override
	public String toString() {
		return "RequestVO [num=" + num + ", name=" + name + ", tel=" + tel + "]";
	}	
	
}
