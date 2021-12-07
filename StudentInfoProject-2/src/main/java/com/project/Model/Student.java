package com.project.Model;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "student")
@Component
public class Student {

	@Id   
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer studentId;
	private String studentName;
	private String studentPassword;
	private Integer studentAge;
	private String email;
	private String phoneNumber;
	private String studentDept;
	private String studentGender;
	private String[] languages; 
	@Lob
	private byte[] studentPic;
	
	public Student() {
		super();
	}

	
	public Student(Integer studentId, String studentName, String studentPassword, Integer studentAge, String email,
			String phoneNumber, String studentDept, String studentGender, String[] languages, byte[] studentPic) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.studentPassword = studentPassword;
		this.studentAge = studentAge;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.studentDept = studentDept;
		this.studentGender = studentGender;
		this.languages = languages;
		this.studentPic = studentPic;
	}


	public Integer getStudentId() {
		return studentId;
	}

	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentPassword() {
		return studentPassword;
	}

	public void setStudentPassword(String studentPassword) {
		this.studentPassword = studentPassword;
	}

	public Integer getStudentAge() {
		return studentAge;
	}

	public void setStudentAge(Integer studentAge) {
		this.studentAge = studentAge;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getStudentDept() {
		return studentDept;
	}

	public void setStudentDept(String studentDept) {
		this.studentDept = studentDept;
	}

	public String getStudentGender() {
		return studentGender;
	}

	public void setStudentGender(String studentGender) {
		this.studentGender = studentGender;
	}

	public String[] getLanguages() {
		return languages;
	}

	public void setLanguages(String[] languages) {
		this.languages = languages;
	}

	public byte[] getStudentPic() {
		return studentPic;
	}

	public void setStudentPic(byte[] studentPic) {
		this.studentPic = studentPic;
	}
	public String getStudentPicture() {
		return Base64.encodeBase64String(studentPic);
	}

	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", studentName=" + studentName + ", studentPassword="
				+ studentPassword + ", studentAge=" + studentAge + ", Email=" + email + ", phoneNumber=" + phoneNumber
				+ ", studentDept=" + studentDept + ", studentGender=" + studentGender + ", languages="
				+ Arrays.toString(languages) + ", studentPic=" + Arrays.toString(studentPic) + "]";
	}
}
