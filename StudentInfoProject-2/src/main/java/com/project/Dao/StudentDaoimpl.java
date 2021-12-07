package com.project.Dao;

import java.util.List;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.Model.Student;
import com.project.Repository.StudentRepository;

@Service
public class StudentDaoimpl implements StudentDao{

	@Autowired
	StudentRepository StudentRepository;
	
	
	@Override
	public void addStudent(Student student) {
		// TODO Auto-generated method stub
		StudentRepository.save(student);
	}

	@Override
	public List<Student> getAllStudents() {
		// TODO Auto-generated method stub
		List<Student> studentList =  StudentRepository.findAll();
		return studentList;
		
	}

	@Override
	public Student getStudentById(int studentId) {
		// TODO Auto-generated method stub
		Student student = StudentRepository.getById(studentId);
		
		return student;
	}

	@Override
	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		StudentRepository.save(student);
	}

	@Override
	public void deleteStudent(int studentId) {
		// TODO Auto-generated method stub
		StudentRepository.deleteById(studentId);
	}

	@Override
	public Student validateStudent(Student student) {
		// TODO Auto-generated method stub
		Student student1 = StudentRepository.findByLoginData(student.getStudentName(), student.getStudentPassword());
		return student1;
	}

}
