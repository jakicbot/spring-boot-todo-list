package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.model.Task;
import com.example.demo.repository.TaskRepository;

@Controller
public class MainController {

    private boolean isSorted = false;

    @Autowired
    private TaskRepository taskRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {        
        List<Task> tasks = taskRepository.findAll();
        model.addAttribute("tasks", tasks);
        return "index";
    }

    @RequestMapping("/tasks/{id}")
    public String closeTask(@PathVariable int id) {
        taskRepository.deleteById(id);
        return "redirect:/";
    }

    @RequestMapping("/newTask")
    public String newTask() {
        return "task-form";
    }

    @PostMapping(value = "/saveTask")
    public String saveTask(@ModelAttribute Task task) {
        taskRepository.save(task);
        return "redirect:/";
    }

    @RequestMapping("/sortByPrioirity")
    public String getTasksOrderByPriority(Model model) {
        isSorted = !isSorted;
        List<Task> tasks = null;
        if (isSorted) {
            tasks = taskRepository.findAllByOrderByPriority();
        } else {
            tasks = taskRepository.findAllByOrderByPriorityDesc();
        }
        model.addAttribute("tasks", tasks);
        return "index";
    }
    
}
