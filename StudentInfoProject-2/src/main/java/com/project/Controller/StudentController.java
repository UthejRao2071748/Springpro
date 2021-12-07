package com.project.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.Dao.StudentDao;
import com.project.Model.Student;

@Controller
public class StudentController {

	@Autowired
	Student student;
	
	@Autowired
	StudentDao studentDao;
	
String msg;
	
	
	@RequestMapping("/m")
	public String home(Model model) {
		model.addAttribute("student", student);
		model.addAttribute("msg", msg);
		return "index";
	}
	@RequestMapping("logout")
	public String logoutStudent(Model model) {
		model.addAttribute("student", student);
		msg="Thank You, Visit Again";
		model.addAttribute("msg", msg);
		
		return "index";
	}

	@RequestMapping("validate")
	public String validateUser(@ModelAttribute("student") Student student, Model mv,HttpSession session) {

		Student student1 = studentDao.validateStudent(student);
		session.setAttribute("studentUserName", student.getStudentName());
		if (student1 != null) {
			
			System.out.println("Login Successfull");
			
			
			
			return "redirect:/homepage";
		} else {
			System.out.println("Login Failed");
			msg = "Login Failed";
			return "redirect:/";
		}

	}

	@RequestMapping("/homepage")
	public String showHomePage(Model model) {
		model.addAttribute("student", student);
		return "homepage";
	}
	@RequestMapping("/registeration")
	public String showRegisterationForm(Model model) {
		model.addAttribute("student", student);
		return "registeration";
	}

	@RequestMapping("submitform")
	public ModelAndView saveStudent(@ModelAttribute("student") Student student, ModelAndView mv,
			@RequestParam("pic") MultipartFile file) throws IOException {

		System.out.println("In Save Student");
		byte[] studentPic = file.getBytes();
		student.setStudentPic(studentPic);
		studentDao.addStudent(student);
		mv.addObject("msg", "Student Added Successfully");
		// mv.addObject("student", student);
		mv.setViewName("registeration");
		return mv;
	}

	@RequestMapping("getallstudents")
	public ModelAndView getAllStudents(ModelAndView mv) {
		List<Student> studentList = studentDao.getAllStudents();
		mv.addObject("student", studentList);
		mv.addObject("msg", msg);
		mv.setViewName("viewstudents");
		return mv;
	}

	@RequestMapping("getstudentform")
	public String getStudentForm() {
		return "getstudent";
	}

	@RequestMapping("getbystudentid")
	public ModelAndView getById(@RequestParam("studentId") int studentId, ModelAndView mv) {
		Student student = studentDao.getStudentById(studentId);
		mv.addObject("student", student);
		mv.setViewName("showstudent");
		return mv;
	}

	@RequestMapping("updatestudent/{studentId}")
	public String getUpdateStudent(@PathVariable int studentId, Model m) {

		Student student = studentDao.getStudentById(studentId);
		System.out.println("In Controller : " + student);
		 m.addAttribute("student", student);
		return "updatestudent";

	}
	
	@RequestMapping("saveupdate")
	public String saveUpdate(@ModelAttribute("student") Student student,@RequestParam("pic") MultipartFile file) throws IOException {
		byte[] studentPic = file.getBytes();
		student.setStudentPic(studentPic);
		studentDao.updateStudent(student);
		msg="Student Details Updated successfully";
		return "redirect:/getallstudents";

	}

	@RequestMapping("deletestudent/{studentId}")
	public String deleteStudent(@PathVariable int studentId) {
		studentDao.deleteStudent(studentId);
		return "redirect:/getallstudents";
	}
	
}