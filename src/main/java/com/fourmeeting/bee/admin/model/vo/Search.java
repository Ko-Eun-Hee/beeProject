package com.fourmeeting.bee.admin.model.vo;

public class Search {
	private String category;
	private String keyword;
	private String startDate;
	private String endDate;
	public Search() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Search(String category, String keyword, String startDate, String endDate) {
		super();
		this.category = category;
		this.keyword = keyword;
		this.startDate = startDate;
		this.endDate = endDate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	
}
