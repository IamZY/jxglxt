package com.jxgl.domain;

/**
 * Yhb entity. @author MyEclipse Persistence Tools
 */

public class Yhb implements java.io.Serializable {

	// Fields

	private Integer uid;
	private String xgh;
	private String xm;
	private String bm;
	private String dz;
	private String dh;
	private String jb;

	// Constructors

	/** default constructor */
	public Yhb() {
	}

	/** minimal constructor */
	public Yhb(Integer uid) {
		this.uid = uid;
	}

	/** full constructor */
	public Yhb(Integer uid, String xgh, String xm, String bm, String dz, String dh, String jb) {
		this.uid = uid;
		this.xgh = xgh;
		this.xm = xm;
		this.bm = bm;
		this.dz = dz;
		this.dh = dh;
		this.jb = jb;
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

	public String getXm() {
		return this.xm;
	}

	public void setXm(String xm) {
		this.xm = xm;
	}

	public String getBm() {
		return this.bm;
	}

	public void setBm(String bm) {
		this.bm = bm;
	}

	public String getDz() {
		return this.dz;
	}

	public void setDz(String dz) {
		this.dz = dz;
	}

	public String getDh() {
		return this.dh;
	}

	public void setDh(String dh) {
		this.dh = dh;
	}

	public String getJb() {
		return this.jb;
	}

	public void setJb(String jb) {
		this.jb = jb;
	}

}