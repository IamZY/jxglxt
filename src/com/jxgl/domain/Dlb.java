package com.jxgl.domain;

/**
 * Dlb entity. @author MyEclipse Persistence Tools
 */

public class Dlb implements java.io.Serializable {

	// Fields

	private Integer uid;
	private String xgh;
	private String mm;

	// Constructors

	/** default constructor */
	public Dlb() {
	}

	/** minimal constructor */
	public Dlb(Integer uid) {
		this.uid = uid;
	}

	/** full constructor */
	public Dlb(Integer uid, String xgh, String mm) {
		this.uid = uid;
		this.xgh = xgh;
		this.mm = mm;
	}

	// Property accessors

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getXgh() {
		return this.xgh;
	}

	public void setXgh(String xgh) {
		this.xgh = xgh;
	}

	public String getMm() {
		return this.mm;
	}

	public void setMm(String mm) {
		this.mm = mm;
	}

}