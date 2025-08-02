package com.example.household_server.application.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;


@Service
public class MailSenderService {
    
    private static final Logger logger = LoggerFactory.getLogger(MailLogicService.class);
    @Autowired
    private JavaMailSender mailSender;


    public void sendMail(String to,String subject,String body){
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setFrom("shiba14148@gmail.com");
        message.setSubject(subject);
        message.setText(body);
        try{
            
        mailSender.send(message);
        }catch(Exception e){
            logger.error("家計簿サマリ送信失敗: {}",e);
        }
    }

}
