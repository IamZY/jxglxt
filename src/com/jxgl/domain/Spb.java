package com.jxgl.domain;

/**
 * Spb entity. @author MyEclipse Persistence Tools
 */

public class Spb implements java.io.Serializable {

	// Fields

	private Integer spid;
	private String xm;
	private String splb;
	private String spmc;
	private String spcl;
	private String spzt;

	// Constructors

	/** default constructor */
	public Spb() {
	}

	/** minimal constructor */
	public Spb(Integer spid) {
		this.spid = spid;
	}

	/** full constructor */
	public Spb(Integer spid, String xm, String splb, String spmc, String spcl, String spzt) {
		this.spid = spid;
		this.xm = xm;
		this.splb = splb;
		this.spmc = spmc;
		this.spcl = spcl;
		this.spzt = spzt;
	}

	// Property accessors

	public Integer getSpid() {
		return this.spid;
	}

	public void setSpid(Integer spid) {
		this.spid = spid;
	}

	public String getXm() {
		return this.xm;
	}

	public void setXm(String xm) {
		this.xm = xm;
	}

	public String getSplb() {
		return this.splb;
	}

	public void setSplb(String splb) {
		this.splb = splb;
	}

	public String getSpmc() {
		return this.spmc;
	}

	public void setSpmc(String spmc) {
		this.spmc = spmc;
	}

	public String getSpcl() {
		return this.spcl;
	}

	public void setSpcl(String spcl) {
		this.spcl = spcl;
	}

	public String getSpzt() {
		return this.spzt;
	}

	public void setSpzt(String spzt) {
		this.spzt = spzt;
	}

}