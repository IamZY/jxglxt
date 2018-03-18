package com.jxgl.domain;

/**
 * Ksb entity. @author MyEclipse Persistence Tools
 */

public class Ksb implements java.io.Serializable {

	// Fields

	private Integer kid;
	private String xm;
	private String kcm;
	private String ks;
	private String ksjf;

	// Constructors

	/** default constructor */
	public Ksb() {
	}

	/** minimal constructor */
	public Ksb(Integer kid) {
		this.kid = kid;
	}

	/** full constructor */
	public Ksb(Integer kid, String xm, String kcm, String ks, String ksjf) {
		this.kid = kid;
		this.xm = xm;
		this.kcm = kcm;
		this.ks = ks;
		this.ksjf = ksjf;
	}

	// Property accessors

	public Integer getKid() {
		return this.kid;
	}

	public void setKid(Integer kid) {
		this.kid = kid;
	}

	public String getXm() {
		return this.xm;
	}

	public void setXm(String xm) {
		this.xm = xm;
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

	public String getKsjf() {
		return this.ksjf;
	}

	public void setKsjf(String ksjf) {
		this.ksjf = ksjf;
	}

}