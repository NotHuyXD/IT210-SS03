package com.demo.controller;

import com.demo.model.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmployeeController {

    @GetMapping("/employees")
    public String listEmployees(Model model) {

        List<Employee> list = new ArrayList<>();
        list.add(new Employee(1, "Trần Văn A", "Đào tạo", 8000.0));
        list.add(new Employee(2, "Trần Văn B", "Đào tạo", 12000.0));
        list.add(new Employee(3, "Trần Văn C", "Đào tạo", 10000.0));
        model.addAttribute("employees", list);

        return "employee-list";
    }
}
