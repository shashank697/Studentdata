package com.infidata.modal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="officeinfo")
public class Office {

	@Id
	private int sno;
	private String batchno;
	@GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
//	@ManyToOne
//	@Id
//  @JoinColumn(name = "id" )
// private MyTable myTable;

	private String fees;
	private String reciptno;
	private String trainer;

public Office() {
		
	}
	
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getBatchno() {
		return batchno;
	}
	public void setBatchno(String batchno) {
		this.batchno = batchno;
	}
//public int getId() {
//	return id;
//}
//public void setId(int id) {
//		this.id = id;
//	}
	public String getFees() {
		return fees;
	}
	public void setFees(String fees) {
		this.fees = fees;
	}
	public String getReciptno() {
		return reciptno;
	}
	public void setReciptno(String reciptno) {
		this.reciptno = reciptno;
	}
	public String getTrainer() {
		return trainer;
	}
	public void setTrainer(String trainer) {
		this.trainer = trainer;
	}
	public Office(String batchno,String fees, String reciptno,String trainer) {
		super();
		this.batchno = batchno;
		//this.id = id;
		this.fees = fees;
		this.reciptno = reciptno;
		this.trainer=trainer;
	}
	@Override
	public String toString() {
		return "Office [sno=" + sno + ", batchno=" + batchno + ",fees=" + fees
				+ ", reciptno=" + reciptno + ",trainer=" + trainer + "]";
	}
	
	
	
	
	
}
