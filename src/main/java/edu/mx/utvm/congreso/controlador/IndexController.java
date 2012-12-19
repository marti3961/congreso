package edu.mx.utvm.congreso.controlador;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class IndexController {
	protected final Log logger = LogFactory.getLog(getClass());
    @RequestMapping(value="/index.htm")
    public ModelAndView handleIndexRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        Map<String, Object> modelo = new HashMap<String, Object>();
        modelo.put("fecha", new Date().toString());
        
    	return new ModelAndView("index", "modelo", modelo);
    }
}