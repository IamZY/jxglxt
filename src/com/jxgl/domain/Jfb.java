package com.jxgl.domain;

/**
 * Jfb entity. @author MyEclipse Persistence Tools
 */

public class Jfb implements java.io.Serializable {

	// Fields

	private Integer jid;
	private String lb;
	private Integer jf;
	private String mc;

	// Constructors

	/** default constructor */
	public Jfb() {
	}

	/** minimal constructor */
	public Jfb(Integer jid) {
		this.jid = jid;
	}

	/** full constructor */
	public Jfb(Integer jid, String lb, Integer jf, String mc) {
		this.jid = jid;
		this.lb = lb;
		this.jf = jf;
		this.mc = mc;
	}

	// Property accessors

	public Integer getJid() {
		return this.jid;
	}

	public void setJid(Integer jid) {
		this.jid = jid;
	}

	public String getLb() {
		return this.lb;
	}

	public void setLb(String lb) {
		this.lb = lb;
	}

	public Integer getJf() {
		return this.jf;
	}

	public void setJf(Integer jf) {
		this.jf = jf;
	}

	public String getMc() {
		return this.mc;
	}

	public void setMc(String mc) {
		this.mc = mc;
	}

}