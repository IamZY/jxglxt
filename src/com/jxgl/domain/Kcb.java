package com.jxgl.domain;

/**
 * Kcb entity. @author MyEclipse Persistence Tools
 */

public class Kcb implements java.io.Serializable {

	// Fields

	private Integer kcid;
	private String kcm;
	private String ks;

	// Constructors

	/** default constructor */
	public Kcb() {
	}

	/** minimal constructor */
	public Kcb(Integer kcid) {
		this.kcid = kcid;
	}

	/** full constructor */
	public Kcb(Integer kcid, String kcm, String ks) {
		this.kcid = kcid;
		this.kcm = kcm;
		this.ks = ks;
	}

	// Property accessors

	public Integer getKcid() {
		return this.kcid;
	}

	public void setKcid(Integer kcid) {
		this.kcid = kcid;
	}

	public String getKcm() {
		return this.kcm;
	}

	public void setKcm(String kcm) {
		this.kcm = kcm;
	}

	public String getKs() {
		return this.ks;
	}

	public void setKs(String ks) {
		this.ks = ks;
	}

}